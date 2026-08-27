cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.97"
  sha256 arm:          "ffe66f3bbe6b888823c19553c9355a3992b3ab7e1a18b6c68d5da288628eb425",
         intel:        "a886bb82eeb247a796675dfab9696a10a5fa5a1653703157426120ab143a6b25",
         arm64_linux:  "f7c2fb6f71a5e148091a5b033a310959ffb91bc5c64167930e099f18f62a9c4f",
         x86_64_linux: "80349adedd29a31ada20c3ade9896b54c2caa16a6372027808b7fc479f1206fd"

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
