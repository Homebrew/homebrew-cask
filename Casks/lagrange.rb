cask "lagrange" do
  arch = Hardware::CPU.intel? ? "macos10.13-x86_64" : "macos11.0-arm64"

  version "1.13.6"

  if Hardware::CPU.intel?
    sha256 "f8d8503ad61777caea5963c6cec9407556d3669802767db5568af553589747eb"
  else
    sha256 "af60d5446d11f801831a04c183c0bf78c33ba2ef5960ca763913efda440a0b38"
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
