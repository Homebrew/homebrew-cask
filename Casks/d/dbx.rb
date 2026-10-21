cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.51"
  sha256 arm:          "d844819bacfab167c960c35d825d3fe6638bf58f82854ec309bb0aeab7b81b30",
         intel:        "6f9709ed9bc0075f3462d03a0b44385a12a861d9a4c7075917d70739f2f70cb0",
         arm64_linux:  "1739f761b304c0419725d3d6db9ecc208bcc4d8d297b1f0775cbbaa5ba4a406a",
         x86_64_linux: "4540b79de1acae0c7f04c75bbd46954dc58a2289a37ff4ba693c8c477eee0eda"

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
