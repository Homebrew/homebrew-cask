cask "biscuit" do
  version "1.2.15"
  sha256 "4a9dc80b7a947ec359cd22d406822157f8a971f941f43a093c3deecbb2705822"

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
