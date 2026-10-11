cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.40"
  sha256 arm:          "d4a261ef967a13c5adaeb3a483b7b6f3f34da6a739f015b5ed8b5e2ab40bc7d9",
         intel:        "33564193f25403560db7001cc483b616c1c6975a579485fc183007e650801283",
         arm64_linux:  "844d1ce413a6beee59e7092f2bebda59eba8b253cb4a05f7ed4c868911c55d90",
         x86_64_linux: "d19b0d2a299cdd45f3922f1df2e413ca0c01792db574d4fe240aa7cb7376b18d"

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
