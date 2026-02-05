cask "posturr" do
  version "1.7.1"
  sha256 "dcd3e990da7f69281d427a3e55f3e31571e11d966146435a9273a646029d4f37"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.dmg"
  name "Posturr"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/posturr"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
