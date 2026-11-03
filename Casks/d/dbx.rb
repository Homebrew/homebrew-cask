cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.65"
  sha256 arm:          "7c662106873e1ded192e8ee50fdfbe4dbfb13d12ee6e9a166c69ffbc27da464d",
         intel:        "d8a27cd0074673a16f70ac360a47090820a08ed56b3f5a3f5fcc32cb5b20018f",
         arm64_linux:  "d6496cc917da275ef13600bce0482373d5c1168318a80f44097fe909e8d89c46",
         x86_64_linux: "f3fa266096c0072110d430653428e5a771a19fbc4c72597fd2a9aa9b0049b362"

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
