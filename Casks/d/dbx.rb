cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.44"
  sha256 arm:          "5f6bcf8a690a61a3b567309af81fc211877a9b29fdb326674ec69f4388f8efb0",
         intel:        "5464872dde3b15c0c7d2e9352feffc8ad6e0947a9e99b1426bcc222fc566315b",
         arm64_linux:  "ffdf25df34d704d54d9b49816aeda2299d9b65d3ddc81eaeba2768c604ddb466",
         x86_64_linux: "6633ed9d9a0cfd1a18a273d97d896d7cd7a7a86f2dd53e17578dbb130fb723bd"

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
