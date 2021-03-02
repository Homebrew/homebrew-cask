cask "pgadmin4" do
  version "5.0"
  sha256 "df0e95e92e2dca88f40e2bd157e64a35fdec0628f25f33e044045f6ec7e311d7"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg",
      verified: "ftp.postgresql.org/"
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
