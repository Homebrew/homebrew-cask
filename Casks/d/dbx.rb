cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.52"
  sha256 arm:          "1652b94d79412e7a31c089266e20aa86f7c3d6f2745ab0f37b0ade7bd649caee",
         intel:        "204744638de9030687b04aca4d52b87d42b7d61a978b719d91e846b167f73738",
         arm64_linux:  "1bbf96bbafe612acfb0b8f63d368dd08a618bb6f63f4ac27bd7f9e06b537a280",
         x86_64_linux: "03654209c82d1746d1f9f55af33e8da5c9772d9e0f1b54a78f8e08d03ff9dbce"

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
