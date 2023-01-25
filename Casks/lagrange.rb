cask "lagrange" do
  arch arm: "macos11.0-arm64", intel: "macos10.13-x86_64"

  version "1.15.1"
  sha256 arm:   "837a0548d4405ed77907140a41494791cd7ba36636a68e669c3915aff8b5eaca",
         intel: "ab670d48c3249240a5eb10af296eb5b82e7512a82d4ee5ec9f0160d3edc382c3"

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
