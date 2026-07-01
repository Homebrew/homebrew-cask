cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.42"
  sha256 arm:          "009ee3106c4a7395eaa167852f2d973861c2acb9c8fdb0cf98a129adde576faf",
         intel:        "44f8525f27c46e96933ecc95ac5dfe4640832d1e3a9bc9bee6be1d7b0e6dffc7",
         arm64_linux:  "7d8c0aea63c75fa31f619c439b7b256bbabe8f7d40baf2a0e5eaa85385e9bb4a",
         x86_64_linux: "6fc02b276e7e74217fd6391c160b94164e3244f557dcdcf9fde74a8ffaa5ffbf"

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
