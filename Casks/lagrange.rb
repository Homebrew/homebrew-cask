cask "lagrange" do
  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "a67bda7454ed6060a09d938deed006c4b4078af28559191f792e19a6904554d8"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}-macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "5acb33653df9d7803ae1147fd1243ea80f22593412dd06385087cf6ac9258716"

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
