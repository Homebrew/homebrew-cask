cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.41.0"
  sha256 arm:   "fec02772b6ddc6973ee04f1e730edeeb510a6e63af79a01dcaa9d67d5dc4de4d",
         intel: "5f9475001f6abc8ed9de2af5dd701c97bfa9da1ac00ccfa7a410e4d4e08ee202"

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

  depends_on macos: :monterey

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
