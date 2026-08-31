cask "legcord" do
  version "1.3.0"
  sha256 "02b3a74e859feaeaf4a872e096ba2dba2da72fa7d970215b8efe71edd32298b5"

  url "https://github.com/legcord/legcord/releases/download/v#{version}/legcord-#{version}-mac-universal.dmg"
  name "Legcord"
  desc "Custom Discord client"
  homepage "https://legcord.app/"

  livecheck do
    url "https://legcord.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :monterey

  app "legcord.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.legcord.legcord.sfl*",
    "~/Library/Application Support/legcord",
    "~/Library/Preferences/app.legcord.Legcord.plist",
    "~/Library/Saved Application State/app.legcord.Legcord.savedState",
  ]
end
