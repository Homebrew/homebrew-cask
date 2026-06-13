cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.32"
  sha256 arm:   "f1a9ac289b3934551334474c9057c9a157467c6b7bbf2a5da6ec42bfbdd4c7b7",
         intel: "32cbfe4ac7c3529ad840e2de98f2d998aa0d50efc0e74e5fb9bd7c9801052ec7"

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
