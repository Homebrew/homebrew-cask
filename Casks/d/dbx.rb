cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.47"
  sha256 arm:          "d85c8bbb5023b3449b4289eec73f5c99743b9b9af30c9f8a4e183179a00e994e",
         intel:        "70ae377746166979a9cee189602525cc454b151a38aed2c418bf8a868a6cb3f2",
         arm64_linux:  "c0ec3ce6c81a8a2497670a5e2c9702c38a926609e5c6047bf21d9ab449d508f6",
         x86_64_linux: "e4d184a5bae8b1c08ef4753409804815fbe7ca1e93fa7325f5fd53b2bc65836b"

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
