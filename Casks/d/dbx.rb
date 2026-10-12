cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.41"
  sha256 arm:          "bc91afc9f33fd8d036eba4e23b3511ba1b1f9744390cb74b80181e0fa6b6d3fe",
         intel:        "33d14bbd9b6409474adec3f19a7d8b807c361b3541491c41aa76a5982d146a31",
         arm64_linux:  "1e90ab091e64766b4fb66ba751f355c62939af78c09671ba349ec1497b0acaa3",
         x86_64_linux: "fb855d2cb310182e20b532c0b7632de803782fa13c0e0a48fb00649c01a4aad5"

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
