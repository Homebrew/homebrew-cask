cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.6"
  sha256 arm:          "861b2f59998e0c1108c4bf1afa682bc6047e69d4091b076bb2f5633dfae451f6",
         intel:        "8f648e4fc31cc89d5c0be35290df6f804a8f2ed959decda80c184dab6e9ba369",
         arm64_linux:  "3e12a6e8dc7bb46cb52a7eb4eece5b88575624e5c91075905b5418591fee39b3",
         x86_64_linux: "42488e22a583eefefe57ef89ef9abdf362103084371e1c96ddc3a00e9fa00a03"

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
