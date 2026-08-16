cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.86"
  sha256 arm:          "debe4f5785e6cc20d5343207d2ae1f3028a5dd6c108746c21ba302fc564b2bb4",
         intel:        "9e36874ed22e156c57c0f4fb0d24f2182439ae16565d91a67615f1bac8dceeed",
         arm64_linux:  "4fa772f732931bba7a99a00f99e9cc2ccbbc66d6d0a1e5833ede5f3103b9e96c",
         x86_64_linux: "cc9619b8759c394721cea919fce55e8a759bfb270eb20521035a9625db15119e"

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
