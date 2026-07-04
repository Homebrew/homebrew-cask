cask "tablething" do
  version "0.15.4"
  sha256 "b608226f2921f349a804dbb5af0a520fdbdd0dd7ecc098aa3e83806eec2feaf4"

  url "https://github.com/tablething/tablething/releases/download/v#{version}/Tablething_#{version}_universal.dmg",
      verified: "github.com/tablething/tablething/"
  name "Tablething"
  desc "Database client to query any datasource with AI built in"
  homepage "https://tablething.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :catalina

  app "Tablething.app"

  zap trash: [
    "~/Library/Application Support/app.tablething.desktop",
    "~/Library/Caches/app.tablething.desktop",
    "~/Library/Preferences/app.tablething.desktop.plist",
    "~/Library/Saved Application State/app.tablething.desktop.savedState",
  ]
end
