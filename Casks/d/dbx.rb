cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.4"
  sha256 arm:          "8a8b8e3e6f78b4cfb0e0952108f48a4e1b2c30fd83da56cfccd2d10a0ddda4e7",
         intel:        "7ac26c0a25f88e03df4a40513e0dc56fbc87d33746b4ab63fa7f80e66ec22203",
         arm64_linux:  "040c28f19285e3909dc07bef23cafd4cd693d7618531288a92bbc19382ac23e8",
         x86_64_linux: "f91ed5e3c56fc4974e3f6651f351d6ef2ddce4e8666f99c7668d5ab6f6f2b618"

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
