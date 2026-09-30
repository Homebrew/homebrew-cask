cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.29"
  sha256 arm:          "557bdde1d021bd53215e39c8247f6a7ba99b1b10365c9f6bafbf3c98f210803d",
         intel:        "3314311f9c4363ec4890021baadbc72296c4fb33af045a3624921bf03afe5673",
         arm64_linux:  "cccdbc882636c0b17a508ad600b46de237be433f93b2c53a90f7743861a7697d",
         x86_64_linux: "f006b0bb93a8ecb8abbd096a9f6839016f63de5a9e3b2ed2afc5650a24427827"

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
