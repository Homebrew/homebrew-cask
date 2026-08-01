cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.72"
  sha256 arm:          "baadc9404abf2c019d02e7f3a83942736a154613d10d908741e2d65e73522256",
         intel:        "6a5aaecd9b342a9bc685accef943787415909a81ee6f9f94d45302893c877855",
         arm64_linux:  "0407f7a0adfdbf00fef67266803f33e0f9217ecec1dd47c237bff367aa33c933",
         x86_64_linux: "9a1ce2aa9e6e05d0eddb1d2c3dbd88e215388c8d08821a0269a16cd22370f91b"

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
