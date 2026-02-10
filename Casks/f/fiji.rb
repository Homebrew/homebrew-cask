cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260203-2217"
  sha256 arm:   "cff9f4caf0c373f3eb26650dfbdce6552e28592cb7b109195cda4cfc1d236db2",
         intel: "d6305c82acd201a0d673cfce72bd033589a97755844d384baef42e120797c22c"

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
