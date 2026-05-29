cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.24"
  sha256 arm:   "67aec2bbf3d82d1ea1b42719de1dd7bbf3cdab4152334d9884e8d9fabda99edc",
         intel: "e1078dc50b53c44eafa4c06d41670a79d89b98ed0b1c9e239a944c73aef6d06b"

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
