cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "9.0"
  sha256 arm:   "c48d73503ccdb562663405cac7b6d01d7dece7aa57af1b6e892c40609d5d5aeb",
         intel: "c92ca03bed9dde9cb04e973cd1db886a12c1631512dbb018f6a081ac002176c3"

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
