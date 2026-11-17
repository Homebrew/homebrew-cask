cask "amp-app" do
  version "1.0,1370"
  sha256 "52db98ffb3f51adfbb50d8fe310e1ba5195f34ea3f5db612be2294e11541082e"

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
    "~/Library/Application Scripts/com.ampcode.amp.macos.widgets",
    "~/Library/Application Scripts/group.com.ampcode.amp.macos",
    "~/Library/Caches/com.ampcode.amp.macos",
    "~/Library/Containers/com.ampcode.amp.macos.share",
    "~/Library/Containers/com.ampcode.amp.macos.widgets",
    "~/Library/Group Containers/group.com.ampcode.amp.macos",
    "~/Library/HTTPStorages/com.ampcode.amp.macos",
    "~/Library/HTTPStorages/com.ampcode.amp.macos.binarycookies",
    "~/Library/Preferences/com.ampcode.amp.macos.plist",
    "~/Library/WebKit/com.ampcode.amp.macos",
  ]
end
