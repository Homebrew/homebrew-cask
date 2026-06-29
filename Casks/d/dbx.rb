cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.41"
  sha256 arm:   "5ab6879d9f764dd6a05320d1d5fe4474086fa487a9a4d1447ea4a652ae57d86e",
         intel: "b912b0c50d526c714f670b9168de74312816c19d2834df515093a0522bc5f94b"

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
