cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.6"
  sha256 arm:          "dc5d8aff44ff0218d73878d567b4bbec884e6a48d1698a5075d49c21358bc527",
         intel:        "dc5d8aff44ff0218d73878d567b4bbec884e6a48d1698a5075d49c21358bc527",
         arm64_linux:  "9373537051712d3b0b7ceaf18569b90be1262cd77774c1d1340ed3840fa0e225",
         x86_64_linux: "cad074eb0c91d62c99a86b1ef799548844ceb62d2715d7a01a4d202cbaa640cb"

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
