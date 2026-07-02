cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.44"
  sha256 arm:          "cac1d7858e4b371ff33e5798da00914e6f0d4561b755ed74f109a329c3d21608",
         intel:        "7d8e85cf5b5d04a467205691ba06b98e3d10de1d502b3f45befd65e1475c6ce1",
         arm64_linux:  "9f17d92ba61261a25ea207afd679901a5586fb1b677a89f62cdbdb532595580a",
         x86_64_linux: "186e679d84d45be96cbcafcc4078075139fd6d55f375fd2a5b260522f7941d8f"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

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
