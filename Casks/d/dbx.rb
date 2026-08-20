cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.90"
  sha256 arm:          "9b8d6182e98d67f30e85b70c1c52c6a4e67e3434cc64b9edf6da64848fe9dd65",
         intel:        "7b038db575760e874bfab300a1b93275ce166326712b86c37741941bb6d18626",
         arm64_linux:  "5e4b4332fbd9b26afcc88cac50c2e548844f2788ff5c73d7d91bdd0ca9053a00",
         x86_64_linux: "d74b72b643ffc9c2c4da5a88fa4f0f0ae1fb7034d52bf746399a18c11c006d77"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

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
