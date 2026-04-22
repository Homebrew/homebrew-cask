cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260421-1817"
  sha256 arm:   "9ac2981070b0c9c526e4fa11876599dee7c4a687dd8a7eb69f7b42ed0ddd5fe8",
         intel: "ffc582d95bef8bd1609b6f4954973681afbf763f2abfb1f765a4b32846e689ca"

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

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
