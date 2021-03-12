cask "biscuit" do
  version "1.2.17"
  sha256 "4321f28d7b314d214d0b8ceb043f88ad8728e229c76185d7d9b6a798d695ce60"

  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg",
      verified: "github.com/agata/dl.biscuit/"
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
