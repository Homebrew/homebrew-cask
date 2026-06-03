cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.28"
  sha256 arm:   "511070ac8c7ade384ce6a1fad7f0326e9c8f9c4abded53fd8f0aab08c1783c7b",
         intel: "d9fe3a986b2cc207e85f430fdb867ce4ab4acc885baa28047d2e1b96184d134b"

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
