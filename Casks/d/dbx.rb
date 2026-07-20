cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.61"
  sha256 arm:          "5b302f174d4d352b8e4560d70a1f6d951d911d24407586d8f13439d85f759512",
         intel:        "89dda96dad24bbd18968399230e1cfd41db4bba68faee1e8513407f9552ea0cf",
         arm64_linux:  "5ae397890b8c032e89e91f1139be1ced051a5f591dedf6790c9971dbd2d73c34",
         x86_64_linux: "7034244246155c4873b6bff299d52991d632137fd4574922c5813281939146b2"

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
