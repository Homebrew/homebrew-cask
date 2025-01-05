cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "8.14"
  sha256 arm:   "176b07fa00af22d161c1054ae6df8445e1aec40872294ced339265d7bb85e588",
         intel: "f30f5558fd07c6b5db6a0eb841de036c74b08ef06b123b3c0e70198efebc3ce4"

  url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v#{version}/macos/pgadmin4-#{version}-#{arch}.dmg",
      verified: "ftp.postgresql.org/pub/pgadmin/pgadmin4/"
  name "pgAdmin4"
  desc "Administration and development platform for PostgreSQL"
  homepage "https://www.pgadmin.org/"

  livecheck do
    url "https://ftp.postgresql.org/pub/pgadmin/pgadmin4/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
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
