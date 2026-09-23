cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.21"
  sha256 arm:          "ba6c9fe7252b619f41abeafdacca97477484a5071a512b183a6ac5c4bb67335b",
         intel:        "582facfa5d0156a13b0d8e4426957a44ed9e9723fc04e4df7db8b4ff358b8083",
         arm64_linux:  "de6e98c7acb6776f5c07da3c9fd9bfc1d816b7b97daaa5552de8f951c2eff296",
         x86_64_linux: "a093921aa399c36709315f907c40e95e3d5740902510449006e8fe5a679b2f03"

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
