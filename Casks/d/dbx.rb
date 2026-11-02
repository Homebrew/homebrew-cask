cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.64"
  sha256 arm:          "999fbfcb7008adf9f819d114312071e88f4ca6b2ff083b6970c680ebe17d1164",
         intel:        "3092fc9b0fc56229e41aa8a93839d9cc9f4782bf10b45b3253af6a478274d8df",
         arm64_linux:  "7cad984cc60a30f6340e05b5600f3dfefd00ea0389647639621f475237caa72b",
         x86_64_linux: "886f8895137fa781a91bf11dab0d3054761f83f8af4a9652c857600f9f5d9925"

  on_macos do
    auto_updates true

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

    zap trash: [
      "~/.cache/com.dbx.app",
      "~/.local/share/applications/dbx-handler.desktop",
      "~/.local/share/com.dbx.app",
    ]
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
