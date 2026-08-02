cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.73"
  sha256 arm:          "b36ff0ad0a99bc6d7d26066a9f4c9a753c390c7bb2dae45bd79396b50560c6e1",
         intel:        "9f5684ffd939da42636d80ce844d89daa1631a7b7d7d309aa226def97115990a",
         arm64_linux:  "4176d0a3286e7763a4080b537d9bf1de67e45cfb3835e74875c3f66863931d55",
         x86_64_linux: "247cecb807e1795c5119475caf4a9814f2ecef421179dab5d08492afde891de3"

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
