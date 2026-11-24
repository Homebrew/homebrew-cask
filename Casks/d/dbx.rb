cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.73"
  sha256 arm:          "6f30f7524dc69f59ec7fa3d98ce8fd7230d0cda893aac6d2c411e36eae32d263",
         intel:        "d4bba3a62c4fe9552ef271c5b8b164c05e89886bb04e9bd24d127d5f1cbc4135",
         arm64_linux:  "98e44cc948fa02e44f76244e568d0893550a57cca3a6ae424e5742649994490e",
         x86_64_linux: "d6ed602a89c195ba6d5c593451ee4c3309993536b4573f151c0603ec72922d15"

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

    zap trash: [
      "~/.cache/com.dbx.app",
      "~/.local/share/applications/dbx-handler.desktop",
      "~/.local/share/com.dbx.app",
    ]
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
