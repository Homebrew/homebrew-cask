cask "popclip" do
  version "2026.8.1"
  sha256 "a3117319336996cee1ef9a6d17c03c3d3f1dbf6077164c2cfca5d235420425db"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  name "PopClip"
  desc "Used to access context-specific actions when text is selected"
  homepage "https://www.popclip.app/"

  # The Sparkle feed can contain items on the "Beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Application Support/PopClip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PopClip",
  ]
end
