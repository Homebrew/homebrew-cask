cask "dbgate" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "mac_universal", linux: "linux_#{arch}"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "7.3.0"
  sha256 arm:          "cc7f572f630591d8643c7855e72baa8dfcb9fd2ead07f102f4fc789faccd4288",
         intel:        "cc7f572f630591d8643c7855e72baa8dfcb9fd2ead07f102f4fc789faccd4288",
         arm64_linux:  "65e8183c89ff5e81aa71f1ad0a7baf8cbd507b72fa899d233093672e3ef14d5f",
         x86_64_linux: "9686928cc8ecc7cfb49816f9d2f62f20cc0e76d198f35f0829d59f052924c51a"

  on_macos do
    depends_on macos: :monterey

    app "DbGate.app"

    zap trash: [
      "~/dbgate-data",
      "~/Library/Application Support/dbgate",
      "~/Library/Logs/dbgate",
      "~/Library/Preferences/org.dbgate.plist",
      "~/Library/Saved Application State/org.dbgate.savedState",
    ]
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
