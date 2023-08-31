cask "saoimageds9" do
  arch arm: "arm64", intel: "x86"

  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "8.5"

  on_big_sur do
    sha256 "46917bdab7fd22cb4cfd85145e9813c59e03dc1468f961172ad5ca396616fbb4"

    url "https://ds9.si.edu/download/macosbigsurx86/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/",
        using:    :homebrew_curl
  end
  on_monterey do
    sha256 arm:   "309367b8cfc45eeb481e1cddbb03c3bb615d17eca83fb6c215755bef1e2a9205",
           intel: "473bf1c8421f1120bfa39543a469b91f95ae7509807f911ee44f5e69868424ec"

    url "https://ds9.si.edu/download/macosmonterey#{arch}/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_ventura :or_newer do
    sha256 arm:   "a9c21eb7d05840723849b6a95cc3195cc16b2f43209f037ccc2ca598bee52a05",
           intel: "750810c657fcd8e6ef917b189415a940c6ef8d4c46aafe460f48f3ba3f691389"

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

  depends_on macos: ">= :big_sur"

  app "SAOImageDS9.app"

  zap trash: [
    "~/.ds9",
    "~/Library/Preferences/com.sao.SAOImageDS9.plist",
    "~/Library/Saved Application State/com.sao.SAOImageDS9.savedState",
  ]
end
