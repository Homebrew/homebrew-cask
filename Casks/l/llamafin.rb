cask "llamafin" do
  version "1.8.2"
  sha256 "edeaf2e457df6f4d92a880ecec2dbb87c84ce3f92ca675c1521491caed204ce5"

  url "https://www.dropbox.com/scl/fi/gs17z7juhx213k1xede2l/llamafin-1.8.2.dmg?rlkey=p3hzaurp9iysjw8opf1nej4sf&dl=1"
  name "llamafin"
  desc "Jellyfin Music Player, inspired by Plexamp"
  homepage "https://www.reddit.com/r/llamafin/"

  app "llamafin.App"

  zap trash: [
    "~/Library/Application Support/llamafin",
    "~/Library/Preferences/com.llamafin.app.plist",
    "~/Library/Saved Application State/com.llamafin.app.savedState",
  ]
end
