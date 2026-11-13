cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.70"
  sha256 arm:          "ad95660ad798fc479b9a8946efb1351b856f0826aa75224abb9746f5de324662",
         intel:        "a89265dc74c654133a8624839a552b059eedfb377ffcb492e4be173420d93db6",
         arm64_linux:  "45eb254d585af6ec018133ac2c564ca567dc26d70c0aa47c63be266911c48c17",
         x86_64_linux: "fa0d57f955ce4fdbd1d4b994ccd5b9f6ad572ecbd66d027f158d0e35167ad386"

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
