cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.67"
  sha256 arm:          "8cb722db0ed3d1d4b5cc327bc0f02d40ba39bdc63bcf48da281236de998a3293",
         intel:        "7e72bac8946eb6c782ad8fe9762b4c6e3f758350c507d6894997c9fac612ff25",
         arm64_linux:  "93ebc2a9a01605ec16b40c15e0006298a24cf5e5a668e7cd508abb1a1e362815",
         x86_64_linux: "4c6db38a1e07d98b7b850ca5d4875fb386d1abb0f3695a7f174d279169ac14e4"

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
