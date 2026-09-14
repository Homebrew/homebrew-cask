cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.13"
  sha256 arm:          "5b986d11eb6c7fbdabd6dd0bd2d4cf5661d8841acfbe83ba2d0b539054962aa9",
         intel:        "39757b433d7adf99ee5e1752a1988336e19754df9ae126968dbdc52c67dc46f3",
         arm64_linux:  "7f364e16054d2edbaae0ce6b1c596dbacf5cbcc9974614968d84f70efa3df447",
         x86_64_linux: "6d9d69bf49e0a2420e1a60efaa591c7bb65315016d9d14ee9ba1b1240f3592e9"

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
