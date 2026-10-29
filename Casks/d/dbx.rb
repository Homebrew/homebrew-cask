cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.61"
  sha256 arm:          "c4a6109f81378a1997e916369dc191d9026b1d5108b1b3f063a7152676c80b25",
         intel:        "85f26b3aba7e9efecdf19beca3f1bd0e3f824a1edfde7988eb802f030beb450f",
         arm64_linux:  "acde76fcb36ae19112aa0ab87a5ccb2d598d8abbed9bf4db7eccd7657eb41fa2",
         x86_64_linux: "1b0afd9b7b6a3cdb279428de4a7dd6dcf21c84ee1e52907da6629f66ce05d951"

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
