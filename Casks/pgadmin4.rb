cask "pgadmin4" do
  version "5.5"
  sha256 "e3dc7fac943fccf604f714b1d1f9f716381d7f8c1550d8a0b5fbd483294cac24"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}.dmg",
      verified: "ftp.postgresql.org/"
  name "pgAdmin4"
  desc "Administration and development platform for PostgreSQL"
  homepage "https://www.pgadmin.org/"

  livecheck do
    url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/"
    strategy :page_match
    regex(/href="v?(\d+(?:\.\d+)*)/i)
  end

  app "pgAdmin 4.app"

  zap trash: [
    "~/.pgadmin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*",
    "~/Library/Preferences/org.pgadmin.pgadmin4.plist",
    "~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState",
  ]
end
