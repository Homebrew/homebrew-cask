cask "sequel-ace" do
  version "3.5.3,20035"
  sha256 "27b4683c9343333466fb78d0d9d53559179aabc1cc87470aeef20d5ef3efc321"

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/production/#{version.csv.first}-#{version.csv.second}/Sequel-Ace-#{version.csv.first}.zip"
  name "Sequel Ace"
  desc "MySQL/MariaDB database management"
  homepage "https://github.com/Sequel-Ace/Sequel-Ace"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/production/v?(\d+(?:\.\d+)+)-(\d+)["' >]}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
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
