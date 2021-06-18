cask "sequel-ace" do
  version "3.3.3,3034"
  sha256 "e1297f2756b81ef8b22123e11e1df235849cf5a48897a8254a041f4c7ef5a86c"

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/production/#{version.before_comma}-#{version.after_comma}/Sequel-Ace-#{version.before_comma}.zip"
  name "Sequel Ace"
  desc "MySQL/MariaDB database management"
  homepage "https://github.com/Sequel-Ace/Sequel-Ace"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(%r{^production/(\d+(?:\.\d+)*)-(\d+)$}i)
        "#{match[1]},#{match[2]}" if match
      end.compact
    end
  end

  app "Sequel Ace.app"

  zap trash: [
    "~/Library/Application Support/Sequel Ace",
    "~/Library/Caches/com.sequelace.SequelAce",
    "~/Library/Preferences/com.sequelace.SequelAce.plist",
    "~/Library/Saved Application State/com.sequelace.SequelAce.savedState",
  ]
end
