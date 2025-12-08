cask "gittyup" do
  version "1.4.0"
  sha256 "5f4485f8f9df41c702baa0ce93be6ec91489ec1d1f7cf3e66e4e5e6deee726ae"

  url "https://github.com/Murmele/Gittyup/releases/download/gittyup_v#{version}/Gittyup-#{version}.dmg",
      verified: "github.com/Murmele/Gittyup/"
  name "gittyup"
  desc "Graphical Git client"
  homepage "https://murmele.github.io/Gittyup/"

  # Upstream macOS builds are broken and the developer doesn't have a macOS
  # system to fix the issues. This checks multiple releases to identify the
  # newest version with a dmg asset, either until the upstream situation changes
  # or there are enough releases without a dmg file to break this check.
  livecheck do
    url :url
    regex(/^Gittyup[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
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

  auto_updates true

  app "Gittyup.app"

  zap trash: [
    "~/Library/Application Support/Gittyup",
    "~/Library/Preferences/com.github.gittyup.Gittyup.plist",
    "~/Library/Preferences/com.Murmele.Gittyup.plist",
    "~/Library/Saved Application State/com.Murmele.Gittyup.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
