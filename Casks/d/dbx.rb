cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.59"
  sha256 arm:          "3e9c2a515bb690eaf65ae1de01875dc3152e56c97ddc9853b790aaffea5803cc",
         intel:        "d97201ff879873e3e6d19aa3488166548ab46d203f2fa3c0af6297ef2d104ddb",
         arm64_linux:  "7b9973174709f82394e7c22b0fd99c960bd0700f987688d026d2d1739a7c868d",
         x86_64_linux: "3cef4350d1dfb3fb307f70f0a8be6d51ab4284de6a53af0b12b5b612e79953f5"

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
