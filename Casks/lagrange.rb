cask "lagrange" do
  arch arm: "macos11.0-arm64", intel: "macos10.13-x86_64"

  version "1.14.2"
  sha256 arm:   "4ba0f3bb861f13ecaf4b8a533a2652f983e7ba928268d3758bcde43fae62fd39",
         intel: "eb5a400a4e89da8979bcecd2b0c2d5295b834d4cbb85237af5a9e74b9b6b01cb"

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
