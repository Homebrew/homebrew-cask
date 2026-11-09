cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.68"
  sha256 arm:          "7fe34b07e7b8801e485f3b276b755b76f4ec445bd07178e347f7ba94d5bbc3cb",
         intel:        "1b6a82d5cd08d24a7d16f4b66a8789955fb56bc473c2601bbb8f57f59669bbd5",
         arm64_linux:  "2abc05a589febf2583e299446400618d208d6ea8fe29b6002c12743697df2a8c",
         x86_64_linux: "2da266237af4259ce4775c3707fe00020e2d8f901d31742ae7fdcef318009195"

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
