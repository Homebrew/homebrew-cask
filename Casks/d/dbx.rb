cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.43"
  sha256 arm:          "93d80db5263f954fcc832886b1a786ccd020203629038b4bb38677c5c02512bb",
         intel:        "85ed79c9fe5058564f6f0376136e91f973e5cad22ae1167263370ab3104fe758",
         arm64_linux:  "912707a69f1a7dd6b1530914d28c4a37a3a90fa8c922c4564af4f7a4d7b819ec",
         x86_64_linux: "8e570106d1edb9af3b9535a9bfb61234519716d882ff13b4d03d495770b36c3b"

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
