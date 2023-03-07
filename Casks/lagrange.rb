cask "lagrange" do
  arch arm: "macos11.0-arm64", intel: "macos10.13-x86_64"

  version "1.15.3"
  sha256 arm:   "e272116946e07c012f3319e98c904cd88f7c882848da2dc5efedaab3420ffb93",
         intel: "df1e30c22b0108fbae369775b9bf2e087cecadfb45939788b1f507c0992d1c84"

  url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_#{arch}.tbz",
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
