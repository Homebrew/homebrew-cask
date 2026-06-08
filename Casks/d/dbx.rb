cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.30"
  sha256 arm:   "58d27a7d53e6574f5443cb4b2c631f4896f66c4dfdfbf99c648315744a5094ff",
         intel: "27fcc78848d1bac3779a8212eb93b3cc7de9fd4cd7280739a503e515be853036"

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
