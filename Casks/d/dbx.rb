cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.26"
  sha256 arm:          "4ba3f26dab77a7b49727e6c5bc90a9f117a6b8fbae935c52a5a8314e2c66046a",
         intel:        "37e2664d2694627c77dc117d76389af361ca96a94050e2a94784317e16cbeea3",
         arm64_linux:  "aaca786037056d9e044e2f116e75426c3a3d30e09ba61fe2070ac81835b5923b",
         x86_64_linux: "28a640633b2ab89b51b133326127c13a1655130a76aaba126a871e3c4888bda9"

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
