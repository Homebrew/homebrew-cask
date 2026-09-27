cask "amp-app" do
  version "1.0,580"
  sha256 "f00c932e2b29173a1e90ae7bbcdaaad99e3af7b2d0d2a1337851b55af0c03e31"

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
