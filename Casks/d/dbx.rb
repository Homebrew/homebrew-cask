cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.88"
  sha256 arm:          "6867f718354a66b22eff5d4058f9405dc0941bce29fb486894545e61d535c393",
         intel:        "ef7ac6e31cfbbddc1b7e199b810147a0453d32b125575370dfb23a79844f8f3f",
         arm64_linux:  "c4024f279fe9857ecbbab16c5410e16b9d6eba5221b6dea213de5c78e1912aa0",
         x86_64_linux: "f9f0c17d304c34484e49cce4849b161424468a22782bc6058eda0fc90bf2809a"

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
