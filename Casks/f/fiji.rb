cask "fiji" do
  arch arm: "-arm64", intel: "64"

  version "20261023-0117"
  sha256 arm:   "ecebbde52247dc41e7fac7b6e2ab77b4800a6794a1dfb34d3a5074cc4c845015",
         intel: "741b40cdcc73304401c25d9f5e6ef5affcfa773d1291f889b47148a2b8bf700c"

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
