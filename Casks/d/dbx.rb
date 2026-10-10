cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.39"
  sha256 arm:          "bd10deb1cdb907c7f4f4d34b2a3c28db1d6cbb81409325cceb4ac9c985c997fc",
         intel:        "715263dcc9e340f5833322972c43837cd5c4652ab672c2e83d4b140a4d8abf69",
         arm64_linux:  "b548226a904d8d4cd0b763c13b53de07462c7573a5b73c46bb395b09f7fac018",
         x86_64_linux: "15570c74bad5a3636df0aa0c327e1b3db738bfdd2fbb3648620646d4d7561a7b"

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
