cask "amp-app" do
  version "1.0,540"
  sha256 "e93c50ad35fec0fe0a3c1786865f83371cd08cf4aa8a92f0b4bdd510673df9f3"

  url "https://static.ampcode.com/mac/Amp-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Amp"
  desc "Coding agent and development environment"
  homepage "https://ampcode.com/app"

  livecheck do
    url "https://static.ampcode.com/mac/appcast.xml"
    strategy :sparkle do |items|
      items.map { |item| "#{item.short_version},#{item.version}" }
    end
    throttle 10
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Amp.app"

  uninstall quit: "com.ampcode.amp.macos"

  zap trash: [
    "~/Library/Application Scripts/com.ampcode.amp.macos.share",
    "~/Library/Application Scripts/group.com.ampcode.amp.macos",
    "~/Library/Caches/com.ampcode.amp.macos",
    "~/Library/Containers/com.ampcode.amp.macos.share",
    "~/Library/Group Containers/group.com.ampcode.amp.macos",
    "~/Library/HTTPStorages/com.ampcode.amp.macos",
    "~/Library/HTTPStorages/com.ampcode.amp.macos.binarycookies",
    "~/Library/Preferences/com.ampcode.amp.macos.plist",
    "~/Library/WebKit/com.ampcode.amp.macos",
  ]
end
