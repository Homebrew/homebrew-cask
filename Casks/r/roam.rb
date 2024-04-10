cask "roam" do
  arch arm: "arm64", intel: "x64"

  version "104.1.1-beta001"
  sha256 arm:   "eccd52f198a481ff84d3636b4488b1f7c0fdc8f54499df1a4634879fee5a00dd",
         intel: "6741c82563446c73f3b801810bad85f99ebfdf2ef1b93efb59e5cd5f46afed0f"

  url "https://download.ro.am/Roam/8a86d88cfc9da3551063102e9a4e2a83/latest/darwin/#{arch}/Roam.dmg"
  name "Roam"
  desc "Virtual office"
  homepage "https://ro.am/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Roam.app"

  uninstall quit: "inc.wonder.roam"

  zap trash: [
    "~/Library/Caches/inc.wonder.roam",
    "~/Library/Caches/inc.wonder.roam.ShipIt",
    "~/Library/Preferences/inc.wonder.roam.plist",
    "~/Library/Saved Application State/inc.wonder.roam.savedState",
  ]
end
