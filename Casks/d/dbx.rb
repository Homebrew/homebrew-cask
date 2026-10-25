cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.55"
  sha256 arm:          "e4922847ddfeec40b2aa8a38331719ce6d47f3842d4962e3fa52c43c918fc465",
         intel:        "6d7494eb25d2811dc16f9d5fc00df8f2cc490dd071ebad777a1eac87f85517cf",
         arm64_linux:  "81e8c6ed075ba79a9179e319af8ad65e0645d1f194945342a0378c62f8f5deea",
         x86_64_linux: "b5e33c7311b0baf1e2408a857ff7add5f5ecb42d7b47c47195e8376129f0d5e2"

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
