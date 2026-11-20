cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.72"
  sha256 arm:          "4856a6a66afd0752c6abdc3b12c2e391b6bf77063effa7eb550965aa8fe8ffdc",
         intel:        "39309b5eb8600b016caed0b72369e3c1f539c6979a06810705074da54b7eeb73",
         arm64_linux:  "4931fbb6b10bad849793430bce09bb8a037c471e8a910d37deec4e0f2d3556b1",
         x86_64_linux: "05938ae293f3b6ff4f1437d26c50add786681b891f584096ad798f77cbc32070"

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
