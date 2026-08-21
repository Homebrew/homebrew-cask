cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.91"
  sha256 arm:          "b28956dc1e2bb5d7b3f5520a1834654a08c9e063c5d2be111ed0eef054e2db9c",
         intel:        "50daaca263de26249b29ae530d34c3c6eb342fbad4d213d65328d031741e19f4",
         arm64_linux:  "6ae76bc36074aece340ff9898e1a4934e6e0226f5bee34629d89968ab746cd34",
         x86_64_linux: "aa9738d48774ed114eb4d258a66ef8179637c508280e309bd0dc452e5a416487"

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
