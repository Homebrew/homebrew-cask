cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.34"
  sha256 arm:   "ace0e7c92080c386d73be68f9c556fa76753151e55385121f0075d2a7cb9c192",
         intel: "931b9e90378259682f826e397330b290b8c258dcf014d2ffe2c9877b150da0dc"

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
