cask "dorso" do
  version "1.14.2"
  sha256 "69943aba5c69fdc131e79cec51f8f46c4adcd9e4c2d70f5ff0aae9cbd3ef1e4c"

  url "https://github.com/tldev/dorso/releases/download/v#{version}/Dorso-v#{version}.dmg"
  name "Dorso"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/dorso"

  auto_updates true
  depends_on macos: :ventura

  app "Dorso.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
