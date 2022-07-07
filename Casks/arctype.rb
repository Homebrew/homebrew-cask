cask "arctype" do
  version "0.9.70"
  sha256 "e4ff60cbf7b034ff160e0b24be73ebc5887c919774d0092605a3052bdd504356"

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
