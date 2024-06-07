cask "textual" do
  version "7.2.3,240606.22,1a4696349"
  sha256 "a93cc4ead05bdc11e7f24e24697198faaff095422d57b2bc46018aac4b8f71f9"

  url "https://cached.codeux.com/textual/downloads/resources/builds/Textual-#{version.csv.third}/universal/Textual.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://textual-updates-backend.codeux.com/sparkle/feeds/v7/feed-one.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version},#{item.url[%r{/Textual[._-]v?([\dA-z]+)/universal/Textual.zip}i, 1]}"
    end
  end

  auto_updates true

  app "Textual.app"

  zap trash: [
    "~/Library/Application Support/Textual",
    "~/Library/Preferences/com.codeux.apps.textual.plist",
  ]
end
