cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.62"
  sha256 arm:          "772f614460db245d0e9e71bfe96b1ad004f30141f73615d35722d93083ef9934",
         intel:        "892eaace7c16ec140cb225230dbfd9bd2b7333f5da0f598c2f6c9b601531af89",
         arm64_linux:  "4820a3f5c8f76fc797a66c4c77d83209ce7c9c6e10e02eef876392b9757cd1b7",
         x86_64_linux: "54f194428fb1b1365e0c19438745d343cc71e56aeb21a1c2eca1503454e486b6"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end
