cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.57"
  sha256 arm:          "6ca7d443b09e98e53326001229740166bb013d7ccab14dac0f96d470089ad2d3",
         intel:        "f97bb694547f190dcd5073918f0bb8e63e00fe2f5a1016ceda029dcb986c17bb",
         arm64_linux:  "b684330f126ff9452ff9bc03016917d5edb004d4a04773b8ad595c18ec691167",
         x86_64_linux: "9daeb345a3af373996873950b2a516b20652402b7cde00d61d307f40b3785e39"

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
