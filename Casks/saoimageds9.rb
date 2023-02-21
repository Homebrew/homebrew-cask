cask "saoimageds9" do
  arch arm: "arm64", intel: "x86"

  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "8.4.1"

  on_mojave :or_older do
    sha256 "bfe57aa62f1c36ec6ba00e6423bf84b2ce1b34d1af60dffc3adc141caa67d878"
    url "https://ds9.si.edu/download/macosmojave/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_catalina do
    sha256 "a076aa60f206297ea8f926ba7b267b368ff9e1f0b50f1c7543aa021fc9bfad17"
    url "https://ds9.si.edu/download/macoscatalina/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_big_sur do
    sha256 "b48565cdaadca1c1363173fac685cd75a68351c914792b2f43c6cb66b3316eed"
    url "https://ds9.si.edu/download/macosbigsurx86/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_monterey do
    sha256 arm:   "bbee664d4b4c3abab017c7971b92c13071161aa30fff95d2dfa9b1c1f4691a67",
           intel: "32ad574b38e589417cfec7ca34aba52a126d71efd512bcb5145c268aaaa2e4b6"
    url "https://ds9.si.edu/download/macosmonterey#{arch}/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end
  on_ventura do
    sha256 arm:   "ce0a3d3215f21f6203637bf903aac992f44aadd53891e2d067ea102f5b26e5d5",
           intel: "c340891711358110368cb369468c39de925f5e827309786220d84b0ca4595650"
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

  depends_on macos: ">= :mojave"

  app "SAOImageDS9.app"
end
