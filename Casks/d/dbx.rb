cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.71"
  sha256 arm:          "39b95d141858b5adf16032c6714d285e5c33a70e3460d96ab983a20db9a67d18",
         intel:        "f0554c57a7e5199df53c04ecff2a9c64de3ae81e38905305462ecc960a8f1ace",
         arm64_linux:  "33489b82cb7c9462d2d463a315fe8c400fafc50cc3516a177030904c7e8a1552",
         x86_64_linux: "fb1ad2a1c4131a3f59feb1c343fd586c11cdb9831ec015ac4d06a07a29a6c6f7"

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
