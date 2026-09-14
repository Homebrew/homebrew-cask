cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.12"
  sha256 arm:          "1facf816ff3556dd4032999b7cf63477b1f16ef689f00be3135d149366bbd533",
         intel:        "b3430098c712198df04ea79dba4e07157478db85f9761be8d76bac1d48f46e3e",
         arm64_linux:  "0d4decbd13fec8208ea6058eeb1119d0fa9a1c2c295aff9beccdcf49f2a6c05c",
         x86_64_linux: "22c178374fcf460162ce48adbca6ceffa5e9783c8ba2cf4fb9ffc0c31bdbb6b7"

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
