cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260929-1417"
  sha256 arm:   "4c354844b0a35706625f7b325f04eba3e481ea489e2574e137a002bf84b85ff9",
         intel: "07e7d06373d6e6654661392b07578b1ed2f05d50e64ec1666d2957bb354fff86"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on :macos

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
