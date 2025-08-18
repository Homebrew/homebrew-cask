cask "serverbuddy" do
  version "1.6.1"
  sha256 "241c0cf7232caf2e31a7ec8cb6a85cf76bdeb58142dd32b7add50251f0554cce"

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
  depends_on arch: :arm64

  app "ServerBuddy.app"

  zap trash: [
    "~/Library/Caches/com.prabusoftware.serverbuddy",
    "~/Library/HTTPStorages/com.prabusoftware.serverbuddy",
    "~/Library/Preferences/com.prabusoftware.serverbuddy.plist",
    "~/Library/WebKit/com.prabusoftware.serverbuddy",
  ]
end
