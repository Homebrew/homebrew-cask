cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.38"
  sha256 arm:          "770e04f42f6558c96abd89bd1101e35d705a8570a1e5f25e83e5ef8166d13253",
         intel:        "07d8ae9dbddd113a966d3ee8795818c64023e0e8fd22b353a3e744db0b362ebc",
         arm64_linux:  "e2a6d7aabfa945f5149330c6b66ed027cb8a1e0328cf9dddc7ef48c6807fa22d",
         x86_64_linux: "bc55336324c2477f8d804bdfd8fc3c87cb73f39b768db6b6a7ce74e0a70162e5"

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
