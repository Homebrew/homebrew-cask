cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.76"
  sha256 arm:          "b8d91dfd1f330cf9d20fef65789f0aff67c78e72499858057c59fe49b36e1500",
         intel:        "824cb61bb610b3abdbb98e572db9eb2cfd770d88c091c636bfa8dc32c91c3573",
         arm64_linux:  "bbc5309ffd5c627af0c38b418e34c222b9f7f4225fed16d16908ffe6a2ddc6b4",
         x86_64_linux: "e4552710d4b1770bdd89a186cb5a78617d7a1b450ca69edbb670a63407cfff3d"

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
