cask "sequel-ace" do
  version "3.1.1,3016"
  sha256 "8ee5c9efef71f94af67c3f51763534b16e4628b2fb7c62fed679a345c5433a5a"

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
