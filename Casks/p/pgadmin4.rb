cask "pgadmin4" do
  arch arm: "arm64", intel: "x64"

  version "9.19"
  sha256 arm:   "8827d9444752497602f15cb01bd4014378510a2fdd118902686da3f36713b8ed",
         intel: "a3ef8cce61a1d00a3de5ea00fa75507832ccfebbaa4f5f5685355de0347a51d8"

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

  uninstall quit: "org.pgadmin.pgadmin4"

  zap trash: [
    "~/.pgadmin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl*",
    "~/Library/Application Support/pgAdmin 4",
    "~/Library/Caches/pgAdmin 4",
    "~/Library/Preferences/org.pgadmin.pgadmin4.plist",
    "~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState",
  ]
end
