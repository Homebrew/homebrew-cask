cask "pgadmin4" do
  arch arm: "arm64", intel: "x64"

  version "9.9"
  sha256 arm:   "a42fb642ddecc8fa8366da96a8e8e9bc968c48762d950d6f6ea20044072146bb",
         intel: "25198d7bebf8b2d2b626368ba6f1224d796d175db48316e72fb71589926ce15a"

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
