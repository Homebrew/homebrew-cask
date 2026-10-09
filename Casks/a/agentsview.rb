cask "agentsview" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.45.0"
  sha256 arm:          "8ab74776c1b29243a8ee1cc09857fe88b3ef126ca1f3fd0a52ca0396a9ba4e90",
         intel:        "e0ce99b8e6349f1d701455216a90d6a5c18850b3e5bbc3498b9de77f438f8871",
         arm64_linux:  "bac284d7bb049031d7270a90885c98bbdef6252505eb0c075a8546329581c5f1",
         x86_64_linux: "bcbe9dfdee48ec7a0af4d6073513736611880deb65582317a2d8f1ec50e8641e"

  on_macos do
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
