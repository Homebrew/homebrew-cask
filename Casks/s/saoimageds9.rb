cask "saoimageds9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86"

  on_big_sur do
    version "8.5"
    sha256 arm:   "b50a92cc729e5054aaf511911a189dea9cd13c4f6685a53c404b77efbc071854",
           intel: "46917bdab7fd22cb4cfd85145e9813c59e03dc1468f961172ad5ca396616fbb4"

    url "https://ds9.si.edu/download/macosbigsur#{arch}/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_monterey do
    version "8.7"
    sha256 arm:   "f582d22a632de2b1ec60f164daa42905ad201d4681a2e933b7c03722b2fbd001",
           intel: "e3ca246b630c291b75d2e20d4c23326775e77e3b8a378104494a16342d017749"

    url "https://ds9.si.edu/download/macosmonterey#{arch}/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_ventura :or_newer do
    version "8.7"
    sha256 arm:   "a95299fa3c3630b98effe0be869b7c5981f6871c61e50aebe2d872490aab4f16",
           intel: "a5d718aa95704c47f234e3da54362b45be4a396354074191dfd9dffab4d9bbfb"

    url "https://ds9.si.edu/download/macosventura#{arch}/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end

  name "SAOImage DS9"
  desc "Astronomical data visualisation tool"
  homepage "https://sites.google.com/cfa.harvard.edu/saoimageds9/home"

  livecheck do
    url "https://sites.google.com/cfa.harvard.edu/saoimageds9/download"
    regex(/href=.*?SAOImageDS9%20v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "SAOImageDS9.app"

  zap trash: [
    "~/.ds9",
    "~/Library/Preferences/com.sao.SAOImageDS9.plist",
    "~/Library/Saved Application State/com.sao.SAOImageDS9.savedState",
  ]
end
