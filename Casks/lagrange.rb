cask "lagrange" do
  version "1.6.0"

  if Hardware::CPU.intel?
    sha256 "22f10b451fd95d7594f04cf4f78b5115990ef3ca9a0835afa4d642a7aa854746"

    url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos10.13-x86_64.tbz",
        verified: "github.com/skyjake/lagrange/"
  else
    sha256 "26697f692353182710ce944f0e518946a5034da5d6b61c4755024cf786b9d41d"

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
