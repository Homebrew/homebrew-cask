cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.14"
  sha256 arm:          "962ae72589b1be0433a8d47e06c0e50c4ae6dbc195440b0454b8c5ddbb734b9f",
         intel:        "5522cb2e70d4fdba1bd7211608d50b3d5bfbbc28be99b68a9b29c8628b96cc8b",
         arm64_linux:  "506a33ca3f0eeee559b0b9770646d4b23fa372ce3ca5edcdfa1410183f25c13d",
         x86_64_linux: "6f091ae235cd792a5a21f6ee08ec60b6e2cb9222bf3c2dba36d6ec4accf03ba3"

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
