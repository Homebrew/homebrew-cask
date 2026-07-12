cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.54"
  sha256 arm:          "a177c34cecef17ca9a191ab66da80f64227688d67895f81e9322481aa878c5cf",
         intel:        "37f5d8f87c4c98d85f2e8583a9412591b514e6d1d0d342231523da948acf0b34",
         arm64_linux:  "9722f1457cb2c9a8fe7ec9a8bba319fbeb1ea8b9dbc22f70753ecc204963d1b4",
         x86_64_linux: "666d71e09bfc94d079d396cec52594a6cb69ae192b835b8bff5e37c1a390749e"

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
