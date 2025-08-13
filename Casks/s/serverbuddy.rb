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

  depends_on macos: ">= :sonoma"

  app "ServerBuddy.app"

  zap trash: "~/Library/Preferences/com.prabusoftware.serverbuddy.plist"
end
