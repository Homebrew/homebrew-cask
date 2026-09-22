cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.19"
  sha256 arm:          "abf2dc496a1a28521f0fed9a30fcc72b8f94ec887ad3842e108755d00db6a2f6",
         intel:        "88bd67464f1b364c8bf33da253d38d5a4070091cd7a2510ce8bdc9c2daa292a8",
         arm64_linux:  "1c3bfd5b52edd41e5b3b09abe6883cc65239d793b175373ecd43c3694b292a84",
         x86_64_linux: "6d0f751494df8290567bb96863b54234b6ee21406d29fa105b7af92bf88dd027"

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
