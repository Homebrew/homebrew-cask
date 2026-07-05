cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.46"
  sha256 arm:          "87e46e388ce6c3f889a2e61e039ee95e1dc6bc42d4aa1ccfec011dcc10756bf7",
         intel:        "72e32f32ca548f5dd2bd8917bddf96c446078f5e6cfc5ae7aecfbc5b8bdfc741",
         arm64_linux:  "c373fa4622b163247f163c49c4ac70a3d85424a73eb1ce74afa1dc89cf2a100c",
         x86_64_linux: "415e7ec524fcf1eca111c74e0c5c8aca0944a1daa34d914a5f5aa257254d7682"

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
