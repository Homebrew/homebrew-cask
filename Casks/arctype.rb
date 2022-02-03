cask "arctype" do
  version "0.9.45"
  sha256 "304aa13eac8b6c336d9715c5c3e629614a8ffb886a291d6972e0b2c6a18c0594"

  url "https://arctype-downloads.s3-us-west-2.amazonaws.com/updates/Arctype-#{version}.dmg"
  name "arctype"
  desc "The SQL client and database management tool that's fun to use"
  homepage "https://arctype.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Arctype.app"

  zap trash: [
    "~/Library/Application Support/Arctype",
    "~/Library/Logs/Arctype",
    "~/Library/Saved Application State/com.arctype.sql.savedState",
    "~/Library/Preferences/com.arctype.sql.plist",
  ]
end
