cask "lagrange" do
  arch = Hardware::CPU.intel? ? "macos10.13-x86_64" : "macos11.0-arm64"

  version "1.12.0"

  if Hardware::CPU.intel?
    sha256 "2cfda7f9bb11a84311156026e7f0962000d4015de782d17c6fe94da10dd443b7"
  else
    sha256 "0cc24e2d13ff1608c139791fb30a9f2e4cbf82beef68291583287fbef361fde3"
  end

  url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_#{arch}.tbz",
      verified: "github.com/skyjake/lagrange/"
  name "Lagrange"
  desc "Desktop GUI client for browsing Geminispace"
  homepage "https://gmi.skyjake.fi/lagrange/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.Lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.Lagrange.savedState",
  ]
end
