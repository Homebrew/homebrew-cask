cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "9.8"
  sha256 arm:   "12c15a636b9284fa15cd4f3b0dfdeed66d519bda979801d292ee5135c6792907",
         intel: "7508fd17cb3eb233cad3c610980aee2c8b8cc06ca591d55cf0afdf4e8512a786"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}-#{arch}.dmg",
      verified: "ftp.postgresql.org/pub/pgadmin/pgadmin4/"
  name "pgAdmin4"
  desc "Administration and development platform for PostgreSQL"
  homepage "https://www.pgadmin.org/"

  livecheck do
    url "https://www.pgadmin.org/download/pgadmin-4-macos/"
    regex(%r{href=.*?/pgadmin4/v?(\d+(?:\.\d+)+)/macos/?["' >]}i)
  end

  app "pgAdmin 4.app"

  zap trash: [
    "~/.pgadmin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*",
    "~/Library/Application Support/pgAdmin 4",
    "~/Library/Caches/pgAdmin 4",
    "~/Library/Preferences/org.pgadmin.pgadmin4.plist",
    "~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState",
  ]
end
