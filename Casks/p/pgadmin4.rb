cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "9.5"
  sha256 arm:   "b3f354a8a51f7a0160c9bc2ac5b03a3761af3b1fe90e94769942c029140777b0",
         intel: "4b40efd8a130a17c83ce667458eeb99e31650df95e086d724ae16b70f263b848"

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
