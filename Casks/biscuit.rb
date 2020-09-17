cask "biscuit" do
  version "1.2.11"
  sha256 "2dc5ae1867ad09b6f27559bc19b42ecb5b24892ab86286703d28cc52e4271480"

  # github.com/agata/dl.biscuit/ was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast "https://github.com/agata/dl.biscuit/releases.atom"
  name "Biscuit"
  desc "Browser to organize apps"
  homepage "https://eatbiscuit.com/"

  auto_updates true

  app "Biscuit.app"

  zap trash: [
    "~/Library/Application Support/Biscuit",
    "~/Library/Preferences/com.eatbiscuit.biscuit.plist",
  ]
end
