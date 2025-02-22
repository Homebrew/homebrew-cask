cask "textual" do
  version "7.2.4,3b1c05cfe"
  sha256 "627f43539553290b96582c6bd4ef02451e00178689a8dcf03fd88acf0021ff28"

  url "https://cached.codeux.com/textual/downloads/builds/stable/Textual-#{version.csv.second}/universal/Textual.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://help.codeux.com/textual/Direct-Download-Links.kb"
    regex(%r{href=.*?Textual[._-]v?(\h+)/universal/Textual\.dmg.*?Version\s+v?(\d+(?:\.\d+)+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
