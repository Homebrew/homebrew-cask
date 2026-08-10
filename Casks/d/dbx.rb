cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.80"
  sha256 arm:          "979bd5283c2f40ddb384be3c56f4b64be7bb4ce03951346cd5fe8987905ab428",
         intel:        "684c1573f14d16b8d5855bfae33572663840afbce94e03ad35bef0dd0a8c69f6",
         arm64_linux:  "9c0296b1c29e137928f6a99ca27a4bf95514529b5242e83915f9fe831978561c",
         x86_64_linux: "057c9951f23f01cd407c25c6ed3125b0c27ce0bb6dd290cc9d961e175e04e4a2"

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
