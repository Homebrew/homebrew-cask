cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.13.0"
  sha256 arm:   "6114e47e8fba33f1518ab45a87c53614a988e29cf9cd2f8ccbbc6ef523111c72",
         intel: "0ee9bf21b9b299a814d702281c9778d69de18fc862ca3b1a905546fd414df9d7"

  url "https://github.com/cryptomator/cryptomator/releases/download/#{version}/Cryptomator-#{version}#{arch}.dmg",
      verified: "github.com/cryptomator/cryptomator/"
  name "Cryptomator"
  desc "Multi-platform client-side cloud file encryption tool"
  homepage "https://cryptomator.org/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Cryptomator[._-]v?(\d+(?:\.\d+)+).*?\.(?:dmg|pkg)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Cryptomator.app"

  zap trash: [
    "~/Library/Application Support/Cryptomator",
    "~/Library/Logs/Cryptomator",
    "~/Library/Preferences/org.cryptomator.plist",
  ]
end
