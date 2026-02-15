cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.27.3,2602152dgxiff8p"
  sha256 arm:   "4d2034535f11b241af96e6d29403374a309c49b8c7946bce3f4094ef30ec2b70",
         intel: "e858c8e5a16cbc6582ac5e3fff01c9d07687e7fb9b09d4ee7dceb46d8944a42b"

  url "https://download.todesktop.com/25112796k32u7/Conar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/25112796k32u7/"
  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app/"

  livecheck do
    url "https://download.todesktop.com/25112796k32u7/latest-mac.yml"
    regex(/Conar\s*v?(\d+(?:\.\d+)+)\s*-?\s*(?:Build\s*([a-z\d]+?)[._-])?#{arch}[._-]mac\.zip/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Conar.app"

  zap trash: [
    "~/Library/Application Support/Conar",
    "~/Library/Logs/Conar",
    "~/Library/Preferences/com.wannabespace.conar.plist",
    "~/Library/Saved Application State/com.wannabespace.conar.savedState",
  ]
end
