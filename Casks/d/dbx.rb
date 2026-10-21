cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.50"
  sha256 arm:          "5c478cde8d6dcd53a4a721a099ad2fb6cbb72fd9f9e9d73cf45fb7ab106d462a",
         intel:        "dc0d91604caf81f9b4ff238398490a8212097b73616da4aa32695b23f42d7d98",
         arm64_linux:  "67f3b73b6829356a29274b3e807c4820068d3b2430ae554db5be4f046cb98b25",
         x86_64_linux: "4578d824725238b650ccc2fccdc5a5dc34fdc89db436d2a83af944d51736e9de"

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
