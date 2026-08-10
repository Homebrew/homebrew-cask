cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.78"
  sha256 arm:          "9efabe14a99ec8deeb972898630df77bbebb721dfab5ba7ecec20d915ba68c19",
         intel:        "120fb922fe51272ce4bccfa39c183fc308ff516a989a9a4bea556d45ae9cc507",
         arm64_linux:  "187aad8b56d18e8c2be7dce2d039f94c77923470628835ad344122f063f4bd12",
         x86_64_linux: "4109f470813c7d83e7e4a224b566f5a54393d500660d6e274df8963e39267953"

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
