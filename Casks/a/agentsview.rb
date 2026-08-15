cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.40.1"
  sha256 arm:          "6b9c945245cc0bc3f0926dce9f2020d088ccca7e83e8ea89a7617097856b0ae1",
         intel:        "9e25f9f818858575597abe157b6277342d71ee803882572bc01be96ff97d97f8",
         arm64_linux:  "5faedf08b647b74c85e43464ff73dc470f9d29e682fe06f5adb9b84050e3d5e8",
         x86_64_linux: "fef7c977f6606b72b877aff0b78c5ce0375ec7771aff92cd246c9f9e927b9770"

  on_macos do
    depends_on macos: :big_sur

    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    zap trash: [
      "~/.agentsview",
      "~/Library/Caches/io.agentsview.desktop",
      "~/Library/Logs/io.agentsview.desktop",
      "~/Library/WebKit/io.agentsview.desktop",
    ]
  end
  on_linux do
    app_image "AgentsView_#{version}_#{arch}.AppImage", target: "AgentsView.AppImage"
  end

  url "https://github.com/kenn-io/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}.#{url_end}"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  # Not every release on GitHub provides assets for the app, so we have to find
  # the newest one with the files the cask uses.
  livecheck do
    url :url
    regex(%r{/AgentsView[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]#{url_end}}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next unless match

          match[1]
        end
      end.flatten
    end
  end
end
