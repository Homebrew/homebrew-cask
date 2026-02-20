cask "dorso" do
  version "1.9.1"
  sha256 "8e4a4b30cc483e93168eece055b81a5c5bac09fda84472a63443a23501f03e4c"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
