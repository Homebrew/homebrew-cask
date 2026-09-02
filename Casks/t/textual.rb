cask "textual" do
  version "7.2.7,87084841d"
  sha256 "5feec0c92ae08df269d368677cd501b048f2741c8612bd5108bc07ea48f57864"

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
  depends_on macos: :monterey

  app "Textual.app"

  zap trash: [
    "~/Library/Application Support/Textual",
    "~/Library/Preferences/com.codeux.apps.textual.plist",
  ]
end
