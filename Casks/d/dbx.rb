cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.16"
  sha256 arm:          "599dcd8287fe02e363ddf8daaa35d7a6a204fdbbff98b7963d51cc1ba288823b",
         intel:        "e4dca6ccb21e9d3ab3a6448673a3616304a370c1597685d5fb585207f9a9f9de",
         arm64_linux:  "48c6bde42f50330880732d945cd5326e201b13b071deb939afdce9506b2542d2",
         x86_64_linux: "62ea760679690a6844880720586843fbee3a2c87b0f1fe5046425f40a0081e7c"

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
