cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.99"
  sha256 arm:          "54f979afbc88e2c498c8abc0d3f3cdf1a27c0614055cac9e3c2cc8f7b7a94ad1",
         intel:        "6f8456487fc123923485272a675e5de749b8fbcfd491ab421d18b2e06777bb52",
         arm64_linux:  "2116238dbd63a6233cff1f764ceaa4ed52db33ea95b78fe8695d31b2208d9d68",
         x86_64_linux: "adf3e5596ac452dbd71f4ecc39ff4e3402ec7bb1255b8b4b0ba7ca078986de60"

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
