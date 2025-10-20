cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.11.1"
  sha256 arm:   "153ab5ed47c48824629804f5100ec27aa25c961d874f05ec18eb82828fe340d0",
         intel: "2988ca578f719d827d43a148f932974e15a25e27645def2b00529758834b3b2e"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
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

  depends_on macos: ">= :monterey"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
