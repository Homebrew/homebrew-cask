cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.96"
  sha256 arm:          "8c9c17adb8b5d94fe1f279d1949bec50cd48f5cc42a180ce4a1113bc6ff9105d",
         intel:        "fd2d22d09651de30481b2ad6240c6a3b5a450edfbd54ee9835663b4b45c080cb",
         arm64_linux:  "6962c48490701958bfbd16aa77dad870e40e52ddad89774ec37d6b58ce7918e8",
         x86_64_linux: "05ce4b281a3877420171470432f738bafb8a208766ec7a1e29e4d4ec0dd281c2"

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
