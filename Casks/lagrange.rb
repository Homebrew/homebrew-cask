cask "lagrange" do
  version "1.7.0"

  if Hardware::CPU.intel?
    sha256 "885b36ebd84f1dc35ce3e6d22c993653eadc8a13ce0e38b86ee829798f2febc0"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "f47559f5563db44c4020ff0f6e7fc48056a1ac3c1d503d028f87b30ab2143b7c"

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
