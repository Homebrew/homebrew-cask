cask "sequel-ace" do
  version "3.0.2,3010"
  sha256 "9690aa9a267b6c6141ae323a0946ff41f864b6c75a1435853b50b7418599553f"

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/production/#{version.before_comma}-#{version.after_comma}/Sequel-Ace-#{version.before_comma}.zip"
  appcast "https://github.com/Sequel-Ace/Sequel-Ace/releases.atom"
  name "Sequel Ace"
  desc "MySQL/MariaDB database management"
  homepage "https://github.com/Sequel-Ace/Sequel-Ace"

  app "Sequel Ace.app"

  zap trash: [
    "~/Library/Application Support/Sequel Ace",
    "~/Library/Caches/com.sequelace.SequelAce",
    "~/Library/Preferences/com.sequelace.SequelAce.plist",
    "~/Library/Saved Application State/com.sequelace.SequelAce.savedState",
  ]
end
