cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.45"
  sha256 arm:          "392100c99815a8097a51bfc3d61caf6b54769a77ece3e0b8b4ba7ac44be6a9a3",
         intel:        "04cc5538ce24e35ed205829e9a5c67ae70bc8c0acdbeb542ea9fadcc97d933b4",
         arm64_linux:  "061915c7ced996a6428ac52c522eb6ae3972ca6a97e7a991d83449d2af8c86aa",
         x86_64_linux: "b060e66c7ae9b5a5935a795e67f9026e83b40c8cdee585bb54eb50375799457e"

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
