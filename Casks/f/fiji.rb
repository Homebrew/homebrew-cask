cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260313-1417"
  sha256 arm:   "44532021adc91a8516aba1afef1b24e28bc2bcf39e3cd1231cd99e97b4b86bdd",
         intel: "bcbc4973c2a99276473da6a81c3a7de05157e561fa416beee3e40a0828f49b19"

  url "https://downloads.imagej.net/fiji/archive/latest/#{version}/fiji-latest-macos#{arch}-jdk.zip",
      verified: "downloads.imagej.net/fiji/archive/"
  name "Fiji"
  desc "Open-source image processing package"
  homepage "https://fiji.sc/"

  livecheck do
    url "https://downloads.imagej.net/fiji/archive/latest/"
    regex(/(\d{8}-\d{4})/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fiji/Fiji.app"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
