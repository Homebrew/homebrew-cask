cask "lagrange" do
  arch = Hardware::CPU.intel? ? "macos10.13-x86_64" : "macos11.0-arm64"

  version "1.10.5"

  if Hardware::CPU.intel?
    sha256 "493c032c4224bb0f2c4a512a6958d39cf3b2d6c9d0683bb8173203017c1dabf0"
  else
    sha256 "4f21e8937f5f607f069c0f262bedb34cd52beefe89468f7d5c6cbbd38cda7ada"
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
