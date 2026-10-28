cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.59"
  sha256 arm:          "3c28d7a1cec901bcecff02d12cd95a3c3a016b128d791195edf670fb922cde05",
         intel:        "65d93aba0bda636383f8996e1184c6e82b1397bd2b6df304d283388a1832820c",
         arm64_linux:  "b9b60d3cf41885cc812f393760355aaa9ca54e84907b7963fc57c51961066248",
         x86_64_linux: "20d1c881ce9fc2e4543c371ecfa729a3177c6b6c6b9089e48c2c12c6f367cea7"

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
