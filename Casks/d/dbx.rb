cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.32"
  sha256 arm:          "cd6ce7e0c5e633d02fbd905f88d8249d59c1cb446cff8e2dd720f3c21d98d849",
         intel:        "97f1c1f0e9b44c5f9cbb1a9814f643bc845f2fbb5aae32f53ad3067b1b39ba52",
         arm64_linux:  "0a425e50dc90addef28b2a632464615fda91f2a9e41597659f05b3732bbc6034",
         x86_64_linux: "70f2a30d17b701e70cddcf4e0b4d68f562f37028b69e0aa7dbebab2512fde930"

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
