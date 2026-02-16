cask "dorso" do
  version "1.9.0"
  sha256 "6e6ee294229da09ddf0935edf676c21504e05cf4a1a97d7568c9ee14c455c858"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
