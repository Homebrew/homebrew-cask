cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.76"
  sha256 arm:          "43ee77dd070e55c31d6f446de5fe9bb4521bfd97779d1bb0445928724527ffa9",
         intel:        "4a94c8fa3035fb78d19032582031aba3d0f62309d1d1a94d3d3e8e974c8be105",
         arm64_linux:  "897c75acac4819c03021a179697a7ea3aeafef101f79c0a9929c2ccc03e4ef0e",
         x86_64_linux: "2e98dce3700274fc0dbfb9a9693ec8ce1862ac2a908b8270bfc320eb630005f1"

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
