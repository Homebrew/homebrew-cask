cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.29"
  sha256 arm:   "0e7426584016ba96cec1f7589475f00f33023c19855866ca186fdf40bf05b6c7",
         intel: "e82f44ad7f784c6ccee7d16cb7940da8fe18e9ade00fe16bf2cc5bb46c21912b"

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
