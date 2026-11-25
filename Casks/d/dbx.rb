cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.74"
  sha256 arm:          "74a5e535721954b8206001fdcdb5edec20ed135d59874a437b6424717d501901",
         intel:        "5a3b7823a02c6b7791f72ed1a8c09ee97ab6054b81412186f1de19cb1a8a9551",
         arm64_linux:  "1b0a01c2df7d02d59e9886f410363747fc5b475556abca7ce5a09e08023139c1",
         x86_64_linux: "3f30678860766570991f12142869220dbfc5402b5a55a35d0beb04fbafada9cf"

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
