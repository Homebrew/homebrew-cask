cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.37"
  sha256 arm:          "5964161bf8914e8f86d3905403e940d9ae8c91b1a110cd5a8d8bded868c72d5a",
         intel:        "9e6ae7d3de5ab92d3d782e51c2f2e150e788d4bbf9a914db571974a5d0c23981",
         arm64_linux:  "517a573c226e36038acf216f480be67a30c8bcb058e48564718f2dba3ed3fb71",
         x86_64_linux: "30e24d72b7b35d9aab3ba0c5925302388b7ff3a131b72c0013cc2075268c09fc"

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
