cask "cloudcompare" do
  arch arm: "_arm64", intel: "Universal"

  version "2.13.2"
  sha256 arm:   "490f16a203f2196e64d562750bd815d1bb3e1ba5a206dcebfd32ecc882dfd554",
         intel: "47a38e81e06c60fcefbef8ee8f52584cf8c156e685051721a333651a567ada12"

  # MacOS binaries are built by a third-party. They are linked from the official website.
  url "https://www.simulation.openfields.fr/phocadownload/CloudCompare_#{version}_#{arch}.dmg",
      verified: "simulation.openfields.fr/phocadownload/"
  name "CloudCompare"
  desc "3D point cloud and mesh processing software"
  homepage "https://www.danielgm.net/cc/"

  livecheck do
    url "https://www.simulation.openfields.fr/index.php/cloudcompare-downloads/7-cloudcompare-macos-binaries"
    regex(/href=.*CloudCompare[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "CloudCompare.app"

  zap trash: "~/Library/Preferences/com.cccorp.CloudCompare.plist"
end
