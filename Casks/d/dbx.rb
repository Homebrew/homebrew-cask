cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.24"
  sha256 arm:          "7851fdf7be6a7581568d6a5daf91ba0a091855506c2665f4b467dfc132cf9611",
         intel:        "6adcc370086cfe85f918efdef4cdf5f8aaf48f87cb808f93f3f2316b5539f4a8",
         arm64_linux:  "bc47f6e735b8c525f3786c08ba4b340a912c9c5d1bfbcbe11987b907febab0d5",
         x86_64_linux: "33f4658db3075ccfdac85efac3d2c765efefe835928a08913f79d6fcdfe1acf4"

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
