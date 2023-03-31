cask "lagrange" do
  arch arm: "macos11.0-arm64", intel: "macos10.13-x86_64"

  version "1.15.7"
  sha256 arm:   "9ed912dcb8c1b02c465f7b7a846c2050d2249eda350919db5701484f51fb3778",
         intel: "47d1d660ca2df60a0af8d2aaaffbaa465465bb2992aa023e831061acf6e4914e"

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
