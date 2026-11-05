cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.66"
  sha256 arm:          "9b7abbdc70c693184f6b15621d246204361ffe9612fb8cfb84414b054b9c2813",
         intel:        "6704ce35a0de8c01866d1768ab11da7ba7740701d159c68694ee463612f46bc5",
         arm64_linux:  "a1c1da9f4f8640736e31b860830d61f8120972d0f7dc00ca59e7427647051822",
         x86_64_linux: "246d459f86ce1de0c2e1a25b92693e3da494921c3b6f84fbecee6c4b9d929a1f"

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
