cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.41"
  sha256 arm:          "5ab6879d9f764dd6a05320d1d5fe4474086fa487a9a4d1447ea4a652ae57d86e",
         intel:        "b912b0c50d526c714f670b9168de74312816c19d2834df515093a0522bc5f94b",
         arm64_linux:  "1de0ce73958d744b11b7346a3826780a1ece6ba44a027a22fbd9d3d7991492ad",
         x86_64_linux: "8d53f763b8c7431c538c255b4be8c6bff1ecc689f026719dacb2440918e28d50"

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
