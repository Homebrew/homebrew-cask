cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.31"
  sha256 arm:          "75fcc5a0299e19e674450b13b07d942057f0fb9b9d1a4bf0c37296ab47d7a7a9",
         intel:        "96ef93c811da952b9a0dca03492d9b8d91d880a5762ef8e33e5facd149497d1d",
         arm64_linux:  "2897c675220ff4bac0695e6d64e23e4902e02a8806c655622562b57837634724",
         x86_64_linux: "6c880133da456bc2a69d01ce4858d811b377e6f2550e5ebb580998093ced3c1d"

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
