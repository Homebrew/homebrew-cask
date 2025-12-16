cask "conar" do
  arch arm: "arm64", intel: "x64"

  version "0.25.4,251215sjkp8bkh6"
  sha256 arm:   "b7fd6c52780759d45ed2887087bc9489d1db30f46602e704f1190d0fd3c93d3d",
         intel: "52b100d0066fdbb782a47a61972ec511519643be604b3dd09940918a1b275a91"

  url "https://download.todesktop.com/25112796k32u7/Conar%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/25112796k32u7/"
  name "Conar"
  desc "AI-powered database and data management tool"
  homepage "https://conar.app/"

  livecheck do
    url "https://download.todesktop.com/25112796k32u7/latest-mac.yml"
    regex(/Conar\sv?(\d+(?:\.\d+)+)\s-\sBuild\s([a-z\d]+)-#{arch}-mac\.zip/i)
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
