cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.47"
  sha256 arm:          "7299d601feeb255033463b2a9d39307302010c3730be73799eefe4f440f4becb",
         intel:        "544e797df8719ba7faf0c7d9b0e6bcf43ac42bb06aae3ee27151c4e9fec5e81e",
         arm64_linux:  "a2ba4e97de8b677e29925d076d68c5b1f7cd0f5f95930080aed5e6f3d1d0f8f2",
         x86_64_linux: "210bb32b28fed5afdde0df9ae64c9b3305bb89fd0ab9fb21bd5c2cc3fa8900c0"

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
