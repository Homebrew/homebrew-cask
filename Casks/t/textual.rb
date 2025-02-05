cask "textual" do
  version "7.2.4,7dca3d371"
  sha256 "afbd4adf3fc25a267d89a02b8f5d4c9e2ecd00d2e15261eca2da5061ea21e521"

  url "https://cached.codeux.com/textual/downloads/builds/stable/Textual-#{version.csv.second}/universal/Textual.zip"
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
