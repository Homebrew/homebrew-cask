cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"

  version "1.16.1"
  sha256 arm:   "fa9379718a214e1efcd0db9c67ae0a2f372984ea39a026c9e6c6bff5647e7386",
         intel: "2c5209caac3e0e3c44a8259a59ef816ee55cfb7564c3623933a39c3aab4a45d9"

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
