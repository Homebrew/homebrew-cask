cask "pgadmin4" do
  arch arm: "arm64", intel: "x64"

  version "9.17"
  sha256 arm:   "c49fe899451596ffcf18dbf4c452c89bcec3082dbc31838d46b7dbda792d84df",
         intel: "954f9c48d13f99d57995ad48c43df98b9453b45154ea937d0f653f4747a852fb"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}-#{arch}.dmg"
  name "pgAdmin4"
  desc "Administration and development platform for PostgreSQL"
  homepage "https://www.pgadmin.org/"

  livecheck do
    url "https://www.pgadmin.org/download/pgadmin-4-macos/"
    regex(%r{href=.*?/pgadmin4/v?(\d+(?:\.\d+)+)/macos/?["' >]}i)
  end

  depends_on :macos

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
