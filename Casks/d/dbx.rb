cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.57"
  sha256 arm:          "d1a2161aefc03c4ed1602ac7ea6635457ff7ce7066a08a9efdcedb6576a291ab",
         intel:        "2dd4131c86518ea96cd2a8796f7344def8c666734407bc083d190bbcecd322c4",
         arm64_linux:  "70f82dfb31b42fadb76c83db053347b694e842bf77d8b81170d634d648fc36e0",
         x86_64_linux: "4ea39683ff3d2307ba5582db209e375c288a8580d9265d9589e686256c9ff70c"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end
