cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.0"
  sha256 arm:          "eb4db62bc870cf28629263ee05773cd462430984a56897ebb5306435b1a196ff",
         intel:        "e41cc9440f18801e2581ee932d642b01b6be2f4d47f280186ed5c817277574a2",
         arm64_linux:  "363fd721b0958465f624eb0d896d145fc011b9ff2f9881e08310769cbd0f13a2",
         x86_64_linux: "2ac71cecaa84eee129ecf442345bce8295db91ed5c1e709ffc30fa80aa67f5b4"

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
