cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.26"
  sha256 arm:   "4a78ec4b413d0641fcbb4a7ab484800aa6990c2fa67b4251b5ab396c4eb7ea9d",
         intel: "d0787d94b5f0b5637ca5d96674c6cb2f29da584874a84796fa85d19e159f01d3"

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
