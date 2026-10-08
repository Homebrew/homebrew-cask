cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.36"
  sha256 arm:          "5f9b54fc3ba0d6dca1865dbd19bcd5e78a7ecdbb5ee6940d98463052df64b8ac",
         intel:        "1618f7a1a604f09ffbb1f270221dd43253b4a189f422aa0a5abbd4423d115740",
         arm64_linux:  "f54e12b29c62e3e2489b8a881679af86b6fe199884f3b5d764cbacf2de3f1cad",
         x86_64_linux: "712800e83a93616e637793325da3b45775e17429adfe479695edad8270a0c504"

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
