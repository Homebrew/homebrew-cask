cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.1"
  sha256 arm:   "e1a5450400523e039f8006d2e14c51b36cfc320b2334779a35fe57675bb2170f",
         intel: "0d11a4faed71beb583d1132307480edc05b1058966b13e3d83fa32d1d8121840"

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/os-downloads/"
    regex(/version\sv?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  conflicts_with cask: "ovito"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
