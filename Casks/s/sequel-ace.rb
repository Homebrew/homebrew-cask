cask "sequel-ace" do
  version "6.0.2,20115"
  sha256 "71ce057c8fde4408065c29238906330225d58ac327189c44127e27b397063ba4"

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

  depends_on macos: :ventura

  app "Sequel Ace.app"

  uninstall quit: "com.sequel-ace.sequel-ace"

  zap trash: [
    "~/Library/Application Scripts/com.sequel-ace.sequel-ace",
    "~/Library/Application Scripts/NKQ4HJ66PX.sequel-ace",
    "~/Library/Containers/com.sequel-ace.sequel-ace",
    "~/Library/Group Containers/NKQ4HJ66PX.sequel-ace",
  ]
end
