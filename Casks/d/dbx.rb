cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.27"
  sha256 arm:   "9bf822f6cdc6b7a32670ba17cfb5040b130eaf7371382eadcb3eaca7c8a214dc",
         intel: "b4e2ac9628bc470579221ba03093f7dcac9c40d132dc1b1126216cbb3788245e"

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
