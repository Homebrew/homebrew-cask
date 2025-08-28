cask "serverbuddy" do
  version "1.8.0"
  sha256 "7154671c521e98272ee638717ec1d42f0eed67bdcafe1ff8a5b0254f2000ce1e"

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
