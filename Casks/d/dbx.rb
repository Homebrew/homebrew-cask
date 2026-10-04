cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.33"
  sha256 arm:          "458cbc5ae03741a5a0b1ffddb777065a80e2277550785bbdda4eef7a706e1a25",
         intel:        "bbfe431f875128d0f3bfba284032c3b2cf2a8e6800137cb1ada312c3bbb82e83",
         arm64_linux:  "f3c99e8929829e7eebe9b188e1abc834d88d779cbe5ae70cde9c898935f734b3",
         x86_64_linux: "dec9a1c5ac1c8bf612ba10d96dfbef4b355b1a3d58bb251c62891d298a430455"

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
