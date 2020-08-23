cask "biscuit" do
  version "1.2.10"
  sha256 "ec16e5e0af604f570ebbe83fef6f01780b2126babd710329cce386b97d377626"

  # github.com/agata/dl.biscuit/ was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast "https://github.com/agata/dl.biscuit/releases.atom"
  name "Biscuit"
  homepage "https://eatbiscuit.com/"

  auto_updates true

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
  ]
end
