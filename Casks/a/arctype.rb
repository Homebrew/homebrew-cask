cask "arctype" do
  version "1.0.1"
  sha256 "0888a89ab8580e17d9caa39e76a508c234f5264aef31433c71e42cc814cd7f6e"

  url "https://arctype-downloads.s3-us-west-2.amazonaws.com/updates/Arctype-#{version}.dmg",
      verified: "arctype-downloads.s3-us-west-2.amazonaws.com/updates/"
  name "Arctype"
  desc "SQL client and database management tool"
  homepage "https://arctype.com/"

  # Arctype EOL on 12/06/2022, https://news.ycombinator.com/item?id=33114111
  # arctype.com now redirects to clickhouse.com
  disable! date: "2025-11-30", because: :discontinued

  auto_updates true

  app "Arctype.app"

  zap trash: [
    "~/Library/Application Support/Arctype",
    "~/Library/Logs/Arctype",
    "~/Library/Preferences/com.arctype.sql.plist",
    "~/Library/Saved Application State/com.arctype.sql.savedState",
  ]
end
