cask "serverbuddy" do
  version "1.4.2"
  sha256 "ade482ba030255cb1cdc51041934ce6fd5144b8de14ee7e6305fe6e9341a3610"

  url "https://updates.serverbuddy.app/download/#{version}/ServerBuddy-#{version}.dmg"
  name "ServerBuddy"
  desc "Manage Linux servers"
  homepage "https://serverbuddy.app/"

  livecheck do
    url "https://updates.serverbuddy.app/api/v1/updates/appcast.xml?version=0&channel=stable"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ServerBuddy.app"

  zap trash: [
    "~/Library/Caches/com.prabusoftware.serverbuddy",
    "~/Library/HTTPStorages/com.prabusoftware.serverbuddy",
    "~/Library/Preferences/com.prabusoftware.serverbuddy.plist",
    "~/Library/WebKit/com.prabusoftware.serverbuddy",
  ]
end
