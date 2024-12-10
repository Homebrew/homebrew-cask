cask "lagrange" do
  arch arm: "11.0-arm64", intel: "10.13-x86_64"

  version "1.18.4"
  sha256 arm:   "bd452ef0bb13bc22988fbdf5edf5969f974815ce0f040741cc5c5e6adc16beba",
         intel: "6851e54c3c716da505cfaff68e3999089b08bc1ad2a2ef9195fd1f085863c5ee"

  url "https://github.com/skyjake/lagrange/releases/download/v#{version}/lagrange_v#{version}_macos#{arch}.tbz",
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
