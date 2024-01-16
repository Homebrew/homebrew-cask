cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"

  version "1.17.6"
  sha256 arm:   "59509b262aea846c7eaee833a3aebb69883f3a72e6db38abecd5b5a498d35616",
         intel: "28cb0f576a7fb4b85b0418424b73aefc813be88ed27027f5a008cc8146138926"

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
