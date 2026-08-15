cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.85"
  sha256 arm:          "9c7c875cd56cbe70eb18cd605f264705f593ebbeef29049ef18795ddfceac167",
         intel:        "e298fbbe037e4c2cb42fe05d1dac3ccf3b36b55a5d3192e218b5b63726e1f826",
         arm64_linux:  "8f994e6b43f2d490b4505fcb017107c338024796a798b9e3b55a112acb4566f9",
         x86_64_linux: "d2824b18be96fa1ec2ff2b6ca42cb0b74b8889b7b56f6a46f68a6a0d9f291fb4"

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
