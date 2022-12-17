cask "sequel-ace" do
  version "4.0.4,20044"
  sha256 "84c069364e266b46b63bf2c7f1ab8f01e29e38418ae4d84b46f8d61e1a76bd38"

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
