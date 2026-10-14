cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.43"
  sha256 arm:          "4c9e4c458393150e27c6fb7207355db69319ae16d463b0d02de3f156725bc426",
         intel:        "5cafd17633b5888c98c46c18930139d7cbda8146e53ec9ee624c9e1320c2f3db",
         arm64_linux:  "67a7132d6d51f8cada4c613d9432d910d195cb108b37dd5c37d0de125f2fee20",
         x86_64_linux: "076e7117ae81641a7821091337bc1b93c30fcb4faf3c701ec91efe1940174f44"

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
