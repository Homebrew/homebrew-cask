cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.89"
  sha256 arm:          "9ac44baea5018ee5f640c46513702d7173286b9bc00b3b8e8c46e8f66ae2e06e",
         intel:        "bed4595b66fbff36cdf620aeae916361e7ebfdd3b4b76fb2e0c04f407f667cce",
         arm64_linux:  "5ccf6a0dbd9cb7c3380aed3ab418a6f76614969f07203ecd54a2f97986a159bd",
         x86_64_linux: "51d39fd9c4055fcdf42fda035a0b4f8d36cbfbe17ccc5880ba5d08681362a9d3"

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
