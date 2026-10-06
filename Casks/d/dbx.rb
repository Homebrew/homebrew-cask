cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.35"
  sha256 arm:          "bee4fcb093936e06a5fb62921bd206d039f298ba5a4a5a281ae740099392df6c",
         intel:        "4d1502f8678a9076525d615d9d7885e8be40f2a992f1bce9be8e9ef1765215ef",
         arm64_linux:  "febe68e9912646a4933c68e84337a62273196c8ddbab4f36ab30f58472581b89",
         x86_64_linux: "08ac9d7727f8a60fae12b00e5cad755d7fc301ade02414a854b94078a05d34f4"

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
