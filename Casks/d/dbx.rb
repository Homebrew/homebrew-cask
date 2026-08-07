cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.77"
  sha256 arm:          "9d0e3c576aa389df9aca3b329d11cdec3219d6ce0bcb41eaec3f8e6ff5fe3bb1",
         intel:        "29fc8d0999b2c472898e10666ef87717ac3c39674e033c9e305c0764756f0e87",
         arm64_linux:  "a8a5502b28b9ae1c8bdf46bcd1d1be259ba41512d1a1adbf3bd29987388948ba",
         x86_64_linux: "04dd54430cc6ea4464d672cbbf8b87dcc3df305ab5ae5512ccf571d04e2ca3a0"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

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
