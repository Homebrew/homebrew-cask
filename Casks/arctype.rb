cask "arctype" do
  version "0.9.63"
  sha256 "6f3486ea775ba062561ad8d258f944acb395cad70dba026e305aac44c4c8fc22"

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
