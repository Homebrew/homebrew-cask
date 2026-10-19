cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.48"
  sha256 arm:          "cb397c0582984e5b0ede2320753046486f1dece53f36d7585d3f4751cedc857c",
         intel:        "7def855baba59d3dbad042ffb372238900a9fc0937d32ed6be65d4f808affab5",
         arm64_linux:  "ba522f05a402aea171e859395695a5230dce2189e432b6c6069c3726167d72c0",
         x86_64_linux: "e41e7622b7a599877c05cb097611997b534ec62ca6afbbccd39e5671fa63815c"

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
