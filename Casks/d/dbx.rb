cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.9"
  sha256 arm:          "280fff5cd03daa5b3595d08b8268003b1491304624ba355a4f9f5c0be7b2ed15",
         intel:        "0b359771c68fc2959a528cf1ea8b9cd9d51a8adbd22538d585d7ababc71aa3a3",
         arm64_linux:  "9937a226b01c11f7a49f5b67d0f6177d6265304217bf375f6cc1fbb32eae138d",
         x86_64_linux: "f1877d255f6e5d78c9408f7ec064387fc1c600931a474d7602b45f317388a588"

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
