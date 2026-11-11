cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.69"
  sha256 arm:          "564311662b3618fe0b4e0199b1f40bc428c2dd607b34612cfad24bbea48f8a6b",
         intel:        "8ddbf1ad21a969e4f44e43db80933af173c1b609bdd67ed71683c344462568ee",
         arm64_linux:  "9a1e45c61597aba07579af0d846efc978481c7b9f1f245c89043175c0bd67118",
         x86_64_linux: "2cde3297359fa1ec146430bf458da4ec0282e2c8cec724f9a10f046c393c88ec"

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

    zap trash: [
      "~/.cache/com.dbx.app",
      "~/.local/share/applications/dbx-handler.desktop",
      "~/.local/share/com.dbx.app",
    ]
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
