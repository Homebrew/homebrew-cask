cask "textual" do
  version "7.2.3,1a4696349"
  sha256 "a93cc4ead05bdc11e7f24e24697198faaff095422d57b2bc46018aac4b8f71f9"

  url "https://cached.codeux.com/textual/downloads/resources/builds/Textual-#{version.csv.second}/universal/Textual.zip"
  name "Textual"
  desc "Application for interacting with Internet Relay Chat (IRC) chatrooms"
  homepage "https://www.codeux.com/textual/"

  livecheck do
    url "https://textual-updates-backend.codeux.com/sparkle/feeds/v#{version.csv.first.major}/feed-one.xml"
    regex(%r{/Textual[._-]v?(\h+)/universal/Textual\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[1]}"
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
