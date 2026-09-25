cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.23"
  sha256 arm:          "c1470ecddbd2f7c854c6951ee2a5217c972be7579d1350a4600426ae2f158191",
         intel:        "9d40c0f55d33664741d869a193886309babde894d598f8178b4af599cc0b9f2b",
         arm64_linux:  "c98f9b36aa2a3b8ba05bbb2682e3e6e2d46cbe5d005b76ac05f4392c387f8215",
         x86_64_linux: "32b02ebbe71972829dce2f1f72414c6f90db9ae1f4cd297676126f816eb93d73"

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
