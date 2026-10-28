cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.3"
  sha256 arm:          "b671a6a878e3d99cf4ae0aa55f83b52167e1a17458ace70b256ba2052a7bad74",
         intel:        "b671a6a878e3d99cf4ae0aa55f83b52167e1a17458ace70b256ba2052a7bad74",
         arm64_linux:  "7b8f9538ec35ac9945dce348a2836733b13ff569a096c65f415941f9160a27de",
         x86_64_linux: "cf494b5c0ee19568d4b8584b412b2302d5d52633a95a37f3270cd063df3b4c81"

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
