cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "b04fd243933e8f968865fe06651556c3ac7b8b6e7c486f31287473f3e4bc3fd6",
         intel: "9ad82fe4ec397cd6769dd8324eb8b7a34d36913e4472ad6dad744b8826bc313e"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg",
      verified: "github.com/eCrowdMedia/remake/"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Caches/com.electron.readmoo",
    "~/Library/Caches/com.electron.readmoo.ShipIt",
    "~/Library/HTTPStorages/com.electron.readmoo",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.electron.readmoo.plist",
    "~/Library/Saved Application State/com.electron.readmoo.savedState",
  ]
end
