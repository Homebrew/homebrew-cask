cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.49"
  sha256 arm:          "27a1950765e82676eae94e21f70a8702a7cfde4864e31b7fce2561fa2c371d7c",
         intel:        "6ec11bc8e05c0687501a1a3f13b93474f30994bbf9224406527dee101c37c944",
         arm64_linux:  "855374fb89c5cca9f556b08e9b58d9246e3b8694a6c562658844cde370018925",
         x86_64_linux: "6d98fa6ae4172a5170560b8aa8c957a9c74b5b74c80f6699c3d47822b5c6bf9d"

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
