cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.28"
  sha256 arm:          "b70e8c529c1a371958b7ac1e8ffe55cf197bd0ba6fd919853a76b013ec32ee87",
         intel:        "ffb076e3def8355a86fda98d64f399871db72d2d60457b469c3bc56c61c17c05",
         arm64_linux:  "db396e67acdc010464c0bb424d7f30e431440faebf5ec5ac8a4cce42da443f56",
         x86_64_linux: "a75d81e1dbc1d957bfb667536a4fe8a4a582eb38aac9ec643b557c6e0797faff"

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
