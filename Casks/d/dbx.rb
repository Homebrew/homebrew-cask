cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.81"
  sha256 arm:          "4528b58ab4d29626d71b5414fffd571d5b07f7a9efb446b0d5659c133d1d20d0",
         intel:        "1a09e04cab21018311b134ba618346ffb2f8c42898e5243497535779dcc42d83",
         arm64_linux:  "01b62f1943e50f159ddc9d64ef173683b7b6720ef566b0f230378af033bda783",
         x86_64_linux: "2927e0aa35b8dd352242564be2e4ff1db89f0ab4db6d7aaf308998a7029e92d1"

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
