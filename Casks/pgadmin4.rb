cask "pgadmin4" do
  version "4.30"
  sha256 "2b58eaf87c2687f36fda21328c68a032ec7516c655675dacd6f47b2086638e0e"

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
