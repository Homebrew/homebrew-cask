cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.71"
  sha256 arm:          "afeb94d983435117776fdfc491c6e91106d4aac01620073c9107d06ba5634a69",
         intel:        "be62dde00b2e829ead60279cebbb2b4c5310bd31a5dfed77aa9d041eb870d578",
         arm64_linux:  "238b5c0ef0cc30c7fd919390385e7348f9acc9b8983cac49c62294b02dbd663b",
         x86_64_linux: "339b2531950e570f7b59500381c1f791d2c65c143882a4754aa92b0a90a0bdd8"

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
