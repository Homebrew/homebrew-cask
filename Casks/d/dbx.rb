cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.17"
  sha256 arm:          "1a0dd52444b25fd6a6c51c549b2e73819b17bf575b2f6740443b6d8668aa2e14",
         intel:        "710765183937c07397d2ea133df0bc5e37f38535017322f90cd4e5345a8f7748",
         arm64_linux:  "66d555e90d245705e785393c97281b5fa5a08bf55c95e6576236d49e42950084",
         x86_64_linux: "6e716c0baef4f935ae5b593e05f624d7eb4d43bb39e167fa608d963d62bc063f"

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
