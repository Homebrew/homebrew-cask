cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.53"
  sha256 arm:          "f42bcf94c7bfac41906874542cba7eaf41eabd2eaf0f766099c90502d40f9ae8",
         intel:        "4c3df34cfcb0fdcec87832228ad133495b048c18b8171d22d354ddbe30bf35fc",
         arm64_linux:  "0c71d2e924f29ee3ddcf4b64281108766afeb5737ab47b4c31629eb267ac3e4b",
         x86_64_linux: "ddfaf4edf00018f3ba42bc049c28146dfe8abfda2d8c43d807278628f1fe200d"

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
