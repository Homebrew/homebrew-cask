cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.46"
  sha256 arm:          "75f874dfb71bce5f466a5b6c04f80e49c05fedd00292ae11e90e5f7df3e16a52",
         intel:        "fc4cf42d351e3f895e913f0273711eb4fc623f2caec27e25de83e388071ff199",
         arm64_linux:  "e9dc85df541a24fbc1ee02d5d85df9f8c40ecc0cc4da5ee39e322e431c077b5e",
         x86_64_linux: "cdc07c84ea5e9667d6a802552fe62c0194dd2bb1c71be7954f5d67098115bd40"

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
