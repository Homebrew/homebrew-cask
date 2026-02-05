cask "posturr" do
  version "1.7.2"
  sha256 "036c2187fe3cd9d11206439d099eb1d012bc0b9dd24927518930b07cb0c8523a"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.dmg"
  name "Posturr"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/posturr"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
