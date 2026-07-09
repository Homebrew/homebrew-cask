cask "audirvana-origin" do
  version "2.6.6"
  sha256 "ee7993112e037364bb11a0fa0ac9908d9119cdd5827a29df2d65daf482838d6e"

  url "https://audirvana.com/delivery/origin/mac/AudirvanaOrigin_#{version}.dmg"
  name "Audirvana Origin"
  desc "Audio playback software"
  homepage "https://audirvana.com/"

  livecheck do
    url "https://audirvana.com/delivery/origin/mac/audirvana_origin_appcast.xml"
    strategy :sparkle do |items|
      items.filter_map do |item|
        next unless item.channel.nil?

        item.short_version
      end
    end
  end

  auto_updates true
  depends_on macos: :catalina

  app "Audirvana Origin.app"

  uninstall quit: "com.audirvana.Audirvana-Origin"

  zap trash: [
    "~/Library/Caches/com.audirvana.Audirvana-Origin",
    "~/Library/HTTPStorages/com.audirvana.Audirvana-Origin",
    "~/Library/Preferences/com.audirvana.Audirvana-Origin.plist",
    "~/Library/Saved Application State/com.audirvana.Audirvana-Origin.savedState",
  ]
end
