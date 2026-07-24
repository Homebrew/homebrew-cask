cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.66"
  sha256 arm:          "97850b1f4690034cf4e7d77453f22b96d7128cad05e81ed8f621f43d0bab2862",
         intel:        "279fcf07b77cf797659e36220a726b2fc5e416f687e03ff9ef7c6bcca2bb7059",
         arm64_linux:  "cc238b233050b0ccb74a66408344752170c392004d306819fd8aa241275b9f72",
         x86_64_linux: "36aa262dec5e0385177ffe7bd9fed316cc0c57a285e178c554c799467a478f88"

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
