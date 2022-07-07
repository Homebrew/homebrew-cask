cask "lagrange" do
  arch = Hardware::CPU.intel? ? "macos10.13-x86_64" : "macos11.0-arm64"

  version "1.13.7"

  if Hardware::CPU.intel?
    sha256 "25e118c0bb8d8f362ecf0f0a7df536daa378e85df11b156072c0087df61e0004"
  else
    sha256 "a61d269771d1dc0c449fa19f4d4efe4247276686bb51c7391f444b8df72b0826"
  end

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
