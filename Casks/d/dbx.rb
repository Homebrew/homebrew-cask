cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.56"
  sha256 arm:          "b8683fd1ea3fc8874d5b33564a19672da5720094a0317e7c5980050e958b0e4c",
         intel:        "6a5112678743069aaa10e9fb9fca06b7666ec2b26d0dfa0a085703aa28d3bd2b",
         arm64_linux:  "84a391e2671a3188ffbb390a1d1c0bce89d305449380495d51e242ba23327a9f",
         x86_64_linux: "c36d5f0a2bf69357ef30daa1037ffaab3bddc9c2d8d62e9a343b17b8f5803a98"

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
