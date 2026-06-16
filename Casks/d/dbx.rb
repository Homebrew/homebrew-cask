cask "dbx" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.33"
  sha256 arm:   "11e3a79189c09ba4dbaa846fc8512c18fd59cccf8d55f72f9d5a17fb12d21226",
         intel: "51f41abfd33ca5223e3b40a1c979f7ebe4a836d94659ee77615e29aa9fd29117"

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
