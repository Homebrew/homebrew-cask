cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20260718-0417"
  sha256 arm:   "e66a395160b5affc0c2328accb4782918703918c4b7391a79cfc7300299fea72",
         intel: "b82046df1ac8d270c8ff5b358c7d58e5eace9bbfca836a4ce681459e5fc543b6"

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
  depends_on macos: :big_sur

  suite "Fiji"

  zap trash: [
    "~/Library/Preferences/sc.fiji.cellcounter.plist",
    "~/Library/Saved Application State/org.fiji.savedState",
  ]
end
