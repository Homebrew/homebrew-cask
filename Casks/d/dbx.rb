cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.75"
  sha256 arm:          "1395b122d5b1ea4a0e8e89310ca957c5b489a49fc0fc80a5827b0400f78a4c8e",
         intel:        "663888244da5833eb61f633f45317e1fa7e1904e0cfeac43763706a23dc48f34",
         arm64_linux:  "4234c4df69457fcacbfb1ae820ab1fc884e7a7c2a4e7fd8ee32b2e7428af8aa2",
         x86_64_linux: "8834b9978752416c231530e79972a0d17b3b8b5f4e4083d5c0f005f5b9872f9c"

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
