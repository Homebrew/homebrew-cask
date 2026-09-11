cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.10"
  sha256 arm:          "5e1e85b0501b95146356a8fb573e530fa525dc68e62de1c355bee3b07240053b",
         intel:        "5fdc73c34986d2f547d192644fe63c3056aa80fe25ccf0d0e2d0ec991255ef40",
         arm64_linux:  "cd66a9e0c3813235dcc0e41dadb210b4f3302ba7c21da94c383e333863891975",
         x86_64_linux: "69cbeb8dce877a8918193ee7019805491da6dfd239a44445824109dabc5056ad"

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
