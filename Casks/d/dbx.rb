cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.39"
  sha256 arm:   "f265ec41cb62d84a63be4fd48a61987058c96ce7ff6d8eee3124640f8ca70762",
         intel: "8a04f9831522548cbc9f58c015a7b27de89b6907d3b9edfefa515dee9c1796bd"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

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
