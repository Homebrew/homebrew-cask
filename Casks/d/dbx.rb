cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.37"
  sha256 arm:   "691067660653920cf0346320a4c37a2076c14751ee63ddc34a2996e381da61ab",
         intel: "64ebfc8228b7f040113365d5d069b17ea06a248c1271fb671a53f865dfe7c012"

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
