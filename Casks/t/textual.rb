cask "textual" do
  version "7.2.2,240514.22,e4204b8ab"
  sha256 "b8e71ff3f4df6205b54d5631465e7f0377f2d945799be7d2ab65ddc9f334c290"

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
