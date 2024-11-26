cask "legcord" do
  version "1.0.5"
  sha256 "4697e148e8e83169ea827b15c9ed5e23c849e559d56d34d88163fe77b38a91d7"

  url "https://github.com/legcord/legcord/releases/download/v#{version}/legcord-#{version}-mac-universal.dmg",
      verified: "github.com/legcord/legcord/"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url "https://legcord.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end
