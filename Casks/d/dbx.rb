cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.30"
  sha256 arm:          "76ec4d77fa9420490b2119c4e9fe65a7396a97ed86fe28b0abde1ae579694c49",
         intel:        "24008a7d24c7e3596e416c7e19131fd28ce0323ae485f57e43fb8baa2c780f3e",
         arm64_linux:  "47ee9119b82a175d7b23693a02adf103eb1be04ea62b1d11821ea2bd11e26907",
         x86_64_linux: "f25e4154a743ba60840a85584b94b5ff40f51ed3c7027eb9b4f8cef8664072af"

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
