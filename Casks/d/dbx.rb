cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.20"
  sha256 arm:          "e6fe4835731ac646267dbb29b1faa88b421ed5b1439a0afe5e2afb81facdf379",
         intel:        "ff9edd5cbca9495badd3a81694fa750560c4381063c43d3bd2308de4d2d4df0e",
         arm64_linux:  "d8e7478069b3e3a19d2f88a3e9f40b826d5d2cfc7085150fa6d7ce0ac7bbbc9e",
         x86_64_linux: "e1b37be350743e54c78fcc42b14c3a87a5136bac1180ab8d422a588f3f549dc7"

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
