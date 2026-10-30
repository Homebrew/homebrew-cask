cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.62"
  sha256 arm:          "9a98901c8639adeab9351fdf8ddb5944c0b86640ebac889e6e96dd9df65d634c",
         intel:        "55cfc960349c0f128ed91aa0da5adbec7842c06b099284e37009d951dfc6c5e6",
         arm64_linux:  "dca2fd095d04d4f3c784fe32abba065c2ed16240be62250bf519f7453a6a986b",
         x86_64_linux: "e12d313405ba5ae39d4f52ffab632ce65843d8f9fd15985ae0c907931712c9c7"

  on_macos do
    auto_updates true

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
      "~/Library/WebKit/com.dbx.app",
    ]
  end
  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.#{os}"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
