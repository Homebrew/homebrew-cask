cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.34"
  sha256 arm:          "26475cd41f6a369a10eadbf0af25030e4464c9f5a6ac141fcc824f82cd12cf6f",
         intel:        "f561514f382750d3edccb22dc28f54ee13a9a8514575b3a4384a067e820768bb",
         arm64_linux:  "f0514b6a38a6fe7288b0434fa76aa53e7ddaf9c8d51ccc51c889cbfb197f5180",
         x86_64_linux: "de67be80173fc5c4725c7306d6820da8039e92d530f87d41445d591ad01263fe"

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
