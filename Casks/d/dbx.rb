cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.70"
  sha256 arm:          "4b3f76601add139dbf7020e5c68922b6de5ed62b14680ee889a211fcb313fd5a",
         intel:        "5e37be68d2703156e3c2bc83bd54233a1bca8da6b9164c5cdc6c6acc7208370b",
         arm64_linux:  "e15399684d4267ea3835e5c6ffa8f3711d404f9fc69ae5b65d33385a46c24599",
         x86_64_linux: "274de1e5b1b2bab658db5bd80dd9fce2b048f81255d2104813d886ee2e18577d"

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
