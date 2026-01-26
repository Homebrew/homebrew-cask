cask "popclip" do
  version "2025.9.2"
  sha256 "d04d7c15ac6a6e6719e3b93325ba6238787a532470a94e2724d783897b3b2d92"

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip",
      verified: "pilotmoon.com/downloads/"
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
  depends_on macos: ">= :big_sur"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Application Support/PopClip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PopClip",
  ]
end
