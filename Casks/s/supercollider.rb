cask "supercollider" do
  version "3.14.0"
  sha256 "14142ca569ac0c7b1a2f4bc4c1d578ea1c441a33211846cdf3b74b78ee838258"

  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS-universal.dmg",
      verified: "github.com/supercollider/supercollider/"
  name "SuperCollider"
  desc "Server, language, and IDE for sound synthesis and algorithmic composition"
  homepage "https://supercollider.github.io/"

  livecheck do
    url :url
    regex(/SuperCollider[._-]v?(\d+(?:\.\d+)+)[._-]macOS(?:[._-]universal)?\.dmg/i)
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

  app "SuperCollider.app"

  zap trash: [
    "~/Library/Application Support/SuperCollider",
    "~/Library/Preferences/net.sourceforge.supercollider.plist",
    "~/Library/Saved Application State/net.sourceforge.supercollider.savedState",
  ]
end
