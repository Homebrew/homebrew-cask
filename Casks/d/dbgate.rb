cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.4"
  sha256 arm:          "11a765c242a1b8c7786f9952924b7ef3c8f002093c84f8a9a951073f43de3d82",
         intel:        "11a765c242a1b8c7786f9952924b7ef3c8f002093c84f8a9a951073f43de3d82",
         arm64_linux:  "b40a442910ada59663c6fcbb8bd6cdb5a7b6ff5ce267351111619df64f646202",
         x86_64_linux: "40448f5c81d2ee86c1429f7ac78dbd5f2874b3c5078178e8d4644b4123acd4c0"

  on_macos do
    depends_on macos: :ventura

    app "DbGate.app"

    zap trash: [
          "~/dbgate-data",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.dbgate.sfl*",
          "~/Library/Application Support/dbgate",
          "~/Library/Logs/dbgate",
          "~/Library/Preferences/org.dbgate.plist",
          "~/Library/Saved Application State/org.dbgate.savedState",
        ],
        rmdir: "~/.dbgate"
  end
  on_linux do
    app_image "dbgate-#{version}-linux_#{arch}.AppImage", target: "DbGate.AppImage"

    zap trash: [
          "~/.config/DbGate",
          "~/.config/dbgate",
          "~/dbgate-data",
        ],
        rmdir: "~/.dbgate"
  end

  url "https://github.com/dbgate/dbgate/releases/download/v#{version}/dbgate-#{version}-#{os}.#{url_end}"
  name "DbGate"
  desc "Database manager for MySQL, PostgreSQL, SQL Server, MongoDB, SQLite and others"
  homepage "https://dbgate.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
