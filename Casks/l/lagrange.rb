cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"

  version "1.18.1"
  sha256 arm:   "cc59d207968ab5bf8282d145b2aa2fae36ea765958028a117b8fc35d9c1cadee",
         intel: "4c85ccd98172dde56cb8dbda3400a37b68dd6154e0d51bcea7af181715310d6e"

  url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz",
      verified: "github.com/skyjake/lagrange/"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
