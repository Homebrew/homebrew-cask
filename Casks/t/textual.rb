cask "textual" do
  version "7.2.4,250205.21,3b1c05cfe"
  sha256 "627f43539553290b96582c6bd4ef02451e00178689a8dcf03fd88acf0021ff28"

  url "https://cached.codeux.com/textual/downloads/builds/stable/Textual-#{version.csv.third}/universal/Textual.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://updates.textualapp.com/sparkle/feeds/v#{version.csv.first.major}/feed-one.xml"
    regex(%r{/Textual[._-]v?(\h+)/universal/Textual\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Textual.app"

  zap trash: [
    "~/Library/Application Support/Textual",
    "~/Library/Preferences/com.codeux.apps.textual.plist",
  ]
end
