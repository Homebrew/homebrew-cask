cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.53"
  sha256 arm:          "12efae0495ee5362a9f5efb857a4cb185edc28fa4c2c171812ff4270276e906c",
         intel:        "d0099d8b549fc54339cb66c5603f0b1078d57440b5fc8ed4456828a1c3561c05",
         arm64_linux:  "7d8f5fd66ca79f9d30df591ea7e27d5eedf483ad98e97e8bd27537d8390a6abd",
         x86_64_linux: "222529efbc53dec53dab57ad52e0e77ea46193e11535fd8a10f7a87323941e51"

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
