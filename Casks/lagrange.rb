cask "lagrange" do
  version "1.6.2"

  if Hardware::CPU.intel?
    sha256 "60107ba9a7fc45881ba5150408dab0c30c9e1bd44de49ea7a9e6c677db2d7819"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "b5e2190b43fbaddb5d48fe0f8cc0c2c3b64a4f8e319841a641a9b041e137f499"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos11.0-arm64.tbz",
        verified: "github.com/skyjake/lagrange/"
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
