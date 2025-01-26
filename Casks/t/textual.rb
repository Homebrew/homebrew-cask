cask "textual" do
  version "7.2.4,e4bc0a1d0"
  sha256 "1eabd0fadd344b203c828770e05f962c7afd8a870b79728802b94e69d1200993"

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
