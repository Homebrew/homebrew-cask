cask "lagrange" do
  version "1.6.1"

  if Hardware::CPU.intel?
    sha256 "c1fd881115280371208b1983ecda16085e3a184bfcced235ab04aeb0b0833012"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "1fddea20f60ea6fb50d53da7aca488b0ff5aa4649b9f3ba6eb7d35838e6d95a2"

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
