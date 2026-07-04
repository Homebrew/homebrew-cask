cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.45"
  sha256 arm:          "2a922aa8ad12f38a0283f217554e37c94ed5384488afe525cde3b615142b35ce",
         intel:        "02823aa9786b111e1d4f8af8daa0beb683d92207b5288995f2f03b4a48557166",
         arm64_linux:  "a224256ade426853b66453f6291bd31c8dee23393650a2393a5eabcc19c4ac42",
         x86_64_linux: "fa40be704f9cab3fcd4e53d5354368cd44703c3d3d5a44fb88f6e137f10823f4"

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
