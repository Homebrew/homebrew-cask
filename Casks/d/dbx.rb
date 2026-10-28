cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.60"
  sha256 arm:          "8c88edf8cb6ab9b476d4889dfe504dfabe9781ec3a54f79d1bc7a08c2003d706",
         intel:        "54241dcb410ce35bde7e3b5607dbd2be67311ef65402e5da11071ff0ec46c949",
         arm64_linux:  "e4ab6327be63019070947d147f3da23defb48987e921af55e13f64d5a765810c",
         x86_64_linux: "ddf05e9a78da332d5ab98833c3399dbaf0d48cc3ede64bc78680e942360b5989"

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
