cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.35"
  sha256 arm:   "97eb00cb78d40a4352fa80af7bd1526ecabeb790f226e0419bd247058817c450",
         intel: "1eb733b541e83dff59cb1cc992b69111868a4655145fc1b068a0aec4191f38ff"

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
