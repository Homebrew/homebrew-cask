cask "pgadmin4" do
  version "4.27"
  sha256 "be9f8f12ad0fc0e369a9d348999a10da1e4383126e7e9d723dd0e2ddab2c5d99"

  # ftp.postgresql.org/ was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg"
  appcast "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/"
  name "pgAdmin4"
  homepage "https://www.pgadmin.org/"

  app "pgAdmin 4.app"

  zap trash: [
    "~/.pgadmin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*",
    "~/Library/Preferences/org.pgadmin.pgadmin4.plist",
    "~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState",
  ]
end
