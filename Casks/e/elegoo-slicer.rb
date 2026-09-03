cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.3.5"
  sha256 arm:   "2ff9db9d398af552738f447ad63710d61407b69a7140457238d1507c978b5d9f",
         intel: "120467d2f61ff1ed4b085a4f062ee524041e12738a6ee32da5baf53a1a943d9c"

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
