cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0.11"
  sha256 arm:   "579ef77abc1ccea2813403bcbc0a83f01f46a79edeeb5d0b09f6a4806d41ce49",
         intel: "6069f5f644d643d2dfed1f614eaf883926f03237c1914e2e46e1cdfcee2d8cf4"

  url "https://github.com/ELEGOO-3D/ElegooSlicer/releases/download/v#{version}/ElegooSlicer_Mac_#{arch}_V#{version}.dmg"
  name "ElegooSlicer"
  desc "Open-source slicer for FDM 3D printers"
  homepage "https://github.com/ELEGOO-3D/ElegooSlicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ElegooSlicer.app"

  zap trash: [
    "~/Library/Application Support/ElegooSlicer",
    "~/Library/Caches/com.elegoo.slicer",
    "~/Library/Preferences/com.elegoo.slicer.plist",
    "~/Library/Saved Application State/com.elegoo.slicer.savedState",
  ]
end
