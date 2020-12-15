cask "sequel-ace" do
  version "3.0.0,3006"
  sha256 "d62e16b8906f8aaba5515cbde914631accd61d6f31e3c73b7743b10747bb305c"

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
