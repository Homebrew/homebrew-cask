cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "8.2"
  sha256 arm:   "8ed318323fa37b4d3324546eea4f5c1f03ed7e7fdb70acbc0228b0a7dc0fe5d8",
         intel: "7fb95107f655542445e7b81a6f79ed6082fc575c043a8e889e79ae3e5f2a4d15"

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
