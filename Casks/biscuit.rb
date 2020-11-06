cask "biscuit" do
  version "1.2.13"
  sha256 "659925e7b7cd4ba185b2b3e24f75d514cdbd7d8dccb48affc64c3bd053616bb6"

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
