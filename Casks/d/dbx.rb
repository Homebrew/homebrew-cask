cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.27"
  sha256 arm:          "ca128fe9ab37ebe323a2165813f5d1f1ea72405c38953b400952d16ed492da4f",
         intel:        "6f073f0e4ec656f23c516c930acc88f9155f287be9c1de2e45ca5678b1c2827b",
         arm64_linux:  "d2cd20fc9d590e2a97f97365838c049c5bc8c9c63457940bfc6f3dd9d2701d5c",
         x86_64_linux: "d49f822d6bf2b783af7064772a66f81b97198004a4c44cd36efa07a179de51f8"

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
