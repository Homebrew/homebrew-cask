cask "lagrange" do
  version "1.3.1"

  if Hardware::CPU.intel?
    sha256 "f3f6a28ed045285d8bee1d9ae294cfa9a67d996b3d4d18e4cd6584afb0c78946"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  elsif Hardware::CPU.arm?
    sha256 "3a6e247b6cbf21839d2e741decac37177761f95d3c36555ed27731606cdbbdd9"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos11.0-arm64.tbz",
        verified: "github.com/skyjake/lagrange/"
  end

  name "Lagrange"
  desc "Beautiful Gemini client"
  homepage "https://gmi.skyjake.fi/lagrange/"

  app "Lagrange.app"

  zap trash: [
    "~/Library/Application Support/fi.skyjake.Lagrange",
    "~/Library/Preferences/fi.skyjake.lagrange.plist",
    "~/Library/Saved Application State/fi.skyjake.lagrange.savedState",
  ]
end
