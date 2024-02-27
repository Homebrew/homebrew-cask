cask "cryptomator" do
  arch arm: "-arm64", intel: "-x64"

  version "1.12.3"
  sha256 arm:   "1c60197b1937a6db148d25f08095d9dab47b3f366bd0d0ac9ac703ef89d15f03",
         intel: "e9f6a5fb112f18ebc5439e4533cca74361d785fd65e686c040d9fa13da7489c1"

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
