cask "serverbuddy" do
  version "1.7.0"
  sha256 "510db6a3355b24fbd5e120b92acb37a433fbe61e707f89c34e092a1078c8eee0"

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
