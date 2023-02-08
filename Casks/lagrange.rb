cask "lagrange" do
  arch arm: "macos11.0-arm64", intel: "macos10.13-x86_64"

  version "1.15.2"
  sha256 arm:   "140814d488fe994891e4a220987459d5de524e09e7a29d66cf7f3d02781ee5e8",
         intel: "352c6563576507c747ab336b75a5de5f4ee09212ed97c9d5fd1be7761ae2527a"

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
