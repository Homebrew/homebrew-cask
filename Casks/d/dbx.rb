cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.15"
  sha256 arm:          "3f23231d105fb9c0eb52d946923ca1dc63ee02bdd2bc53462b5290b49b113363",
         intel:        "7ba8a3745b6bbba53683a9a2ee2b9818376a359839e71711af0be24206841855",
         arm64_linux:  "a3028d4b13934f0a07a6c3bb3b841438d9d1f1a90c1c93cd1bffeb0945d8cb16",
         x86_64_linux: "80e5d7a2276aa5895f0ff07251edf65dd0c5be295288e99a2947ad275bc8c8da"

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
