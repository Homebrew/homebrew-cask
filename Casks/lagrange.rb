cask "lagrange" do
  arch = Hardware::CPU.intel? ? "macos10.13-x86_64" : "macos11.0-arm64"

  version "1.7.3"

  url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_#{arch}.tbz",
      verified: "github.com/skyjake/lagrange/"
  if Hardware::CPU.intel?
    sha256 "a86ee463c539dd99858d2e49e70a585bbe1b76610c6d841707e818aafc14da2b"
  else
    sha256 "dbaf309bb60a4db9a04dccaba05f836d3388aea8ff2877c308677b1162832855"
  end

  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
