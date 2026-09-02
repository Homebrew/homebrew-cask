cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.1"
  sha256 arm:          "e519d69596b4b863a746ea814e6e619f5c8a48fda71961bace1364c9efb0293b",
         intel:        "19c106895fa7128cd5ae06bebf1e315daf29c4d5eea4119a863c4c3b2044ffb7",
         arm64_linux:  "f8d817c930f94eb583f04754aaee3aa6cfc0cfb42886cc1da78866846e0a1a32",
         x86_64_linux: "772a348f82384d8123cf8461bac892d7bd2ee81c0d8742166a4f8c02138cb70d"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

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
