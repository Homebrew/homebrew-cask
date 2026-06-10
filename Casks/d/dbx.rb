cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.31"
  sha256 arm:   "f4c59c01ee84be88c40bce6deddffcee84afccddb76b18e5d64a09a87d3560b2",
         intel: "95b0902e9d1df98b59fd89a3c3f68755b68c4176b25b7dbb2e449a469d583e42"

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
