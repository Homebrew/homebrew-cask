cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.0.7"
  sha256 arm:   "8caf6febb33fadfb553288f2fbaedd9370a0880b564b1db6eca80b99ca8d28f9",
         intel: "cf4d0fac4fb96e760c7262a9045abba5321455180f853b49593677981841d50e"

  url "https://github.com/ELEGOO-3D/ElegooSlicer/releases/download/v#{version}/ElegooSlicer_Mac_#{arch}_V#{version}.dmg"
  name "ElegooSlicer"
  desc "Open-source slicer for FDM 3D printers"
  homepage "https://github.com/ELEGOO-3D/ElegooSlicer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "ElegooSlicer.app"

  zap trash: [
    "~/Library/Application Support/ElegooSlicer",
    "~/Library/Caches/com.elegoo3d.elegoo-slicer",
    "~/Library/Preferences/com.elegoo3d.elegoo-slicer.plist",
    "~/Library/Saved Application State/com.elegootechsupport.elegoo-slicer.savedState",
  ]
end
