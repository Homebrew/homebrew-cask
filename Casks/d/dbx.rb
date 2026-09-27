cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.25"
  sha256 arm:          "13cec9a674674d50ddd8f350a57bf8b3afc3e2f5872249952cfc4169d2ce2742",
         intel:        "709e1e47822a4d3a4335b3cbde468cc8cf7481fe2516f102873338b34187b666",
         arm64_linux:  "5dbf4a2c7cdee5e0dbf399a7737e61cd42696abf8e8cdb44fac7dc35a252e00d",
         x86_64_linux: "0169ee76f19a68ce1e6f71dd771e2802da21ac19fdc7af4f47113a1ddfecb615"

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
