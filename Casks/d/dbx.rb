cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.98"
  sha256 arm:          "c4a2a0d476174857f878a1b107ffc547d6234c72597572b98ae7d0253426f18f",
         intel:        "b9a33983ba6d3070097c1e3275c23f8554320b3e73bef5ac97d40e1546b82782",
         arm64_linux:  "49c5ed714f2590606357da19b2fc91f61aa08627278c7c4b77ef43d944527a9a",
         x86_64_linux: "5a83e2ed6109ce981acdc7c957c2bcbbfdc02151f517ecd9e64d2e87e5a1a51a"

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
