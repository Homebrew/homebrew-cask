cask "arctype" do
  version "1.0.1"
  sha256 "0888a89ab8580e17d9caa39e76a508c234f5264aef31433c71e42cc814cd7f6e"

  url "https://arctype-downloads.s3-us-west-2.amazonaws.com/updates/Arctype-#{version}.dmg",
      verified: "arctype-downloads.s3-us-west-2.amazonaws.com/updates/"
  name "Arctype"
  desc "SQL client and database management tool"
  homepage "https://arctype.com/"

  livecheck do
    url "https://arctype-downloads.s3.amazonaws.com/updates/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Arctype.app"

  zap trash: [
    "~/Library/Application Support/Arctype",
    "~/Library/Logs/Arctype",
    "~/Library/Preferences/com.arctype.sql.plist",
    "~/Library/Saved Application State/com.arctype.sql.savedState",
  ]
end
