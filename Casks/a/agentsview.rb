cask "agentsview" do
  os macos: "darwin", linux: "linux"

  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.34.5"
  sha256 arm:          "fc8884cd57ed6da1efaaf2b7626eea34b163ebf087e8ec71ae5440b05cc691d8",
         x86_64:       "3af1a7dcd97ed5fc829efd948f4a4e860d5e69a2d5a1a3473225789e96c49275",
         x86_64_linux: "f1206e9bee67ce8b25013cdb897eba0d143ae6cbff57ec9bd1012e1a3f2237e6",
         arm64_linux:  "6b2a4af1cf48e3214242ea157c6c68e8a8ce437bd645722fd1820b12cae071c3"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/kenn-io/agentsview/releases/download/v#{version}/AgentsView_#{version}_#{arch}#{url_end}",
      verified: "github.com/kenn-io/agentsview/"
  name "AgentsView"
  desc "Browse, search and analyse your past AI coding sessions"
  homepage "https://www.agentsview.io/"

  # Not every release on GitHub provides assets for the app, so we have to find
  # the newest one with the files the cask uses.
  livecheck do
    url :url
    regex(%r{/AgentsView[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}#{url_end}}i)
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

  on_macos do
    app "AgentsView.app"
    binary "#{appdir}/AgentsView.app/Contents/MacOS/agentsview"

    depends_on macos: :big_sur

    zap trash: [
      "~/.agentsview",
      "~/Library/Caches/io.agentsview.desktop",
      "~/Library/WebKit/io.agentsview.desktop",
    ]
  end

  on_linux do
    app_image "AgentsView_#{version}_#{arch}.AppImage", target: "AgentsView.AppImage"
  end
end
