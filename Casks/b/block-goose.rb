cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.61.0"
  sha256 arm:   "ba88b16918807ebec424822842ea498c391ff83044c45887f58903b9232b0d29",
         intel: "9e2cf7e49f94dc1dbda2de22c3b719265eac6aa8ebcd52647f27a08db3e1058c"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  # Some releases don't provide assets for Goose Desktop, so we have to check
  # multiple releases to identify the newest version for the desktop app.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Goose#{arch}\.zip}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: :ventura

  app "Goose.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.goose.sfl*",
    "~/Library/Application Support/Goose",
    "~/Library/Preferences/com.electron.goose.plist",
  ]
end
