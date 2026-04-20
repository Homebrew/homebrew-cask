cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.31.1"
  sha256 arm:   "57cb5fc780782cca5552f844549995d10ccf66f044ae1ae0231cac77e6722a7b",
         intel: "376885e6e899314247d4bd30f521a756ba0279a24460534a0933c31f38d8396b"

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
