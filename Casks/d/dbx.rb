cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.40"
  sha256 arm:   "c478667cae519739e51976eb36d4f18886b4891d4084c60668d754c075d30bfd",
         intel: "3a28125fda85228465b9eba7fca51642c89dde30fc16a7cca7a8eb3183a14c97"

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
