cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.8"
  sha256 arm:          "a9fe566db532d71a4197e00df8352f2b2e909d317f9d6da319096163c5790c2f",
         intel:        "682bd5e07eef0952db6b0d9895cc8dbaef252cf0df25d857ad5a830e542da2b8",
         arm64_linux:  "ec78fcc55b2b5efd425772eb410ed6a5f07b4f54ac7a9c4678faa66e944dc876",
         x86_64_linux: "dea1b5da85bf7d46c6dabf2e3f92844a2f50257f267203860f54673edeeb4d9a"

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
