cask "sequel-ace" do
  version "2.1.5"
  sha256 "751d1e6285da87e948407382808d1be584a98599c135b687958f87f262d9aa8f"

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/#{version}/Sequel-Ace-#{version}-release.zip"
  appcast "https://github.com/Sequel-Ace/Sequel-Ace/releases.atom"
  name "Sequel Ace"
  homepage "https://github.com/Sequel-Ace/Sequel-Ace"

  app "Sequel Ace.app"

  zap trash: [
    "~/Library/Application Support/Sequel Ace",
    "~/Library/Caches/com.sequelace.SequelAce",
    "~/Library/Preferences/com.sequelace.SequelAce.plist",
    "~/Library/Saved Application State/com.sequelace.SequelAce.savedState",
  ]
end
