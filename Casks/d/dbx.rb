cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.60"
  sha256 arm:          "0f1abc90e7bf3d2e21a9f4bcb431438ef0f63e4882af3ef40654b14a6bdf0be5",
         intel:        "94abda7ceb166b0168be860d75c548884e9d8ce49b9fcc43c18a94cc19fd257e",
         arm64_linux:  "896fbb46477029b3f94f2e1e67c59dadfa7f2243a3f75ac56364110771e2965d",
         x86_64_linux: "b244ef1ed3cd29f081c5938d8a4f506de2720d0f0ac89094e7a0ae38edd1bb08"

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
