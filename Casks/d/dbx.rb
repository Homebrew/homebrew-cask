cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.54"
  sha256 arm:          "2c3f4e2b4dda6200f845581d7dcfe75dfa0ce23f0af3388343efbd9c9424dbd9",
         intel:        "033b3c07e7042595d74b0b1b1e8105d6769c4ab30910c213263a7489ba7976ab",
         arm64_linux:  "7514b8b18d1a9c76234a0cea8afadd97194fbd23ba8f897449cf62c214cd9269",
         x86_64_linux: "7fe2ab87d27bd553e8b31faa15c715c3aca65dab75bf6613595936a7a3c21fdd"

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
