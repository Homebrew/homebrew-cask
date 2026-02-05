cask "pgadmin4" do
  arch arm: "arm64", intel: "x64"

  version "9.12"
  sha256 arm:   "baf8be3257b3aea308a142269b15ce39fbe5f9125c499d9dc88027bfebaf399d",
         intel: "80b79044e97777394e041fb17527ccf68fef4e12ef67320e3679f08850699e72"

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
