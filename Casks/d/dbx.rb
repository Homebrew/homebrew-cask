cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.22"
  sha256 arm:          "bf8bed0484c5933b4358919ffc1fa7ba6960f143e5c2785fe3864cb185bbec5e",
         intel:        "e6b783676e20170e492ce7b7d8d515f584c99328990c2dc0c1b805effbce64f8",
         arm64_linux:  "087365f3fe08374b1b8d89cca5548c5f30da7a46ebf70c67fb94ecb701bc9386",
         x86_64_linux: "cda91d0ef8c1b7a7648b674e914295f58984905117fb82204645b5b43dc1ec50"

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
