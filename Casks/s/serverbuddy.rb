cask "serverbuddy" do
  version "1.9.0"
  sha256 "bd5b79a0f5f72f8d8726006f1286cf33cd798046763a0334c1464be54794d7a7"

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
