cask "posturr" do
  version "1.8.0"
  sha256 "d12a7e6bf1dc0b94c7195e206983f587381f1af502fb6ca858cd15f4f5088d70"

  url "https://github.com/tldev/posturr/releases/download/v#{version}/Posturr-v#{version}.dmg"
  name "Posturr"
  desc "Posture monitoring app"
  homepage "https://github.com/tldev/posturr"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Posturr.app"

  zap trash: "~/Library/Preferences/com.thelazydeveloper.posturr.plist"
end
