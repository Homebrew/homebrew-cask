cask "sequel-ace" do
  version "2.3.1"
  sha256 "79b19bf6d5d782c6534368fc45b36097ea767e50e27238ff3ea30a4775cf148e"

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
