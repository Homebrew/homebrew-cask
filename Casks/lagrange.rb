cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"

  version "1.16.6"
  sha256 arm:   "67fdfbdcb1d35d93dbec03ee8c801084106fc1cef73cd018e34345019d59106f",
         intel: "a95e4af093e2e047c14bb540d05b6c1bec87782d6eae847dead099ea1d960a39"

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
