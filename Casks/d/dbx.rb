cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.36"
  sha256 arm:   "a9905893e248277f2592a7e359588c614f475a2cf022367d52f4397ce7c64db8",
         intel: "b27dbf6513b103cf4d2af8c309e205d3c9815bf2289739d9d37b5959ae8e909f"

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
