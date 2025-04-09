cask "sequel-ace" do
  version "5.0.4,20090"
  sha256 "c9cd6099468f479848b7cd1ab85f00f3b81d4b2e3c61bb5853b908f9b66edfd6"

  url "https://github.com/Sequel-Ace/Sequel-Ace/releases/download/production/#{version.csv.first}-#{version.csv.second}/Sequel-Ace-#{version.csv.first}.zip"
  name "Sequel Ace"
  desc "MySQL/MariaDB database management"
  homepage "https://github.com/Sequel-Ace/Sequel-Ace"

  livecheck do
    url :url
    regex(%r{^production/v?(\d+(?:\.\d+)+)(?:-(\d+))?}i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "Sequel Ace.app"

  zap trash: [
    "~/Library/Application Support/Sequel Ace",
    "~/Library/Caches/com.sequelace.SequelAce",
    "~/Library/Preferences/com.sequelace.SequelAce.plist",
    "~/Library/Saved Application State/com.sequelace.SequelAce.savedState",
  ]
end
