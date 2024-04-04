cask "pgadmin4" do
  arch arm: "arm64", intel: "x86_64"

  version "8.5"
  sha256 arm:   "423d0897d0c32850f3316f290305157bb490ee40796ca73fbfae9d20401ea666",
         intel: "a1313df8580682c75d70dc92135450fde58281411e92287f0ecd54a49a01095c"

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
