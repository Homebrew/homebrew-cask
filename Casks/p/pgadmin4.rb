cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "8.6"
  sha256 arm:   "6242ccdc2f351e8fd33dfc6d1c891a7a834f840e0a0b71d4d5bfdb6bd786221f",
         intel: "0adc70f1f110eacba392e351d875fff8445f73d2310366e18922fbe181a34f28"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}-#{arch}.dmg",
      verified: "ftp.postgresql.org/pub/pgadmin/pgadmin4/"
  name "pgAdmin4"
  desc "Administration and development platform for PostgreSQL"
  homepage "https://www.pgadmin.org/"

  livecheck do
    url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/"
    regex(/href="v?(\d+(?:\.\d+)+)/i)
  end

  app "pgAdmin 4.app"

  zap trash: [
    "~/.pgadmin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*",
    "~/Library/Preferences/org.pgadmin.pgadmin4.plist",
    "~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState",
  ]
end
