cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.18"
  sha256 arm:          "96154aeb21dbc3a4db539ddea9ea456683c19c0b211e3b06b51adf6fd53c441e",
         intel:        "20df5ab0f7e2a6710bb96f82801d0947d6a606c86e1aec2e975d02c9a0435fc7",
         arm64_linux:  "09c76e8059da0b8a5e18194a2461f3b3864bebce6524ea7b4465e077ea56848c",
         x86_64_linux: "7728fbabdec5b66e56df92fb24340c5c106390ad80760408a987cf0e783a246b"

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
