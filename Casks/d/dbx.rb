cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.38"
  sha256 arm:   "00f4eea34a178019abcbe9c31738482197b095d56dda42e78b94fcbea08d7249",
         intel: "f24ad6d66445335f5f08aab094dd3aa35052167bc9208c826c57124d6e98ef12"

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
