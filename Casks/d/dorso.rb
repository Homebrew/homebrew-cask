cask "dorso" do
  version "1.10.1"
  sha256 "4648135bae9ab12c1632743b42bbc087d460e774fc59755fad77d041ac08307f"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
