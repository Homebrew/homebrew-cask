cask "textual" do
  version "7.2.6,65222a260"
  sha256 "fc4217076a74e0f92f67ec4ccde6b9e59509a3df167b1d039a5b65a3b4ad8daa"

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
