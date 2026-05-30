cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.25"
  sha256 arm:   "6d845161022cc918bc5913b9a07c8d7595e87b2efb1799121ad5b9e4633249d4",
         intel: "8146aeb632e49ff6887bb8efcf640f920081a64ed95e738436e767163c6b6475"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.dmg",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  depends_on macos: :big_sur

  app "DBX.app"

  zap trash: [
    "~/Library/Application Support/com.dbx.app",
    "~/Library/Caches/com.dbx.app",
    "~/Library/Logs/com.dbx.app",
    "~/Library/Preferences/com.dbx.app.plist",
  ]
end
