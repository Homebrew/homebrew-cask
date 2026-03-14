cask "dorso" do
  version "1.11.0"
  sha256 "1d493a2fb4022412d7efc5fb7682607d0113eefb7a68f275f67a8fb8af77e2cb"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
