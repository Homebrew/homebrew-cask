cask "saoimageds9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "8.3"

  if MacOS.version <= :mojave
    sha256 "bfe57aa62f1c36ec6ba00e6423bf84b2ce1b34d1af60dffc3adc141caa67d878"
    url "https://ds9.si.edu/download/macosmojave/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  elsif MacOS.version <= :catalina
    sha256 "a076aa60f206297ea8f926ba7b267b368ff9e1f0b50f1c7543aa021fc9bfad17"
    url "https://ds9.si.edu/download/macoscatalina/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  # ARM build does not currently work on monterey, should be fixed for version 8.4
  elsif Hardware::CPU.arm? && MacOS.version <= :big_sur
    sha256 "078e5254825fbdf13c3ff9f224791dfc18dc7d4430f965e29c3e06d2ff828092"
    url "https://ds9.si.edu/download/macosbigsurarm64/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  else
    sha256 "241bffb0110fbf9f1e5217ae1cd80e76c3c2d3e9e7f37023b335d5c7e4640604"
    url "https://ds9.si.edu/download/macosbigsurx86/SAOImageDS9%20#{version}.dmg",
        verified: "ds9.si.edu/download/"
  end

  name "SAOImage DS9"
  desc "Astronomical data visualisation tool"
  homepage "https://sites.google.com/cfa.harvard.edu/saoimageds9/home"

  livecheck do
    url "https://sites.google.com/cfa.harvard.edu/saoimageds9/download"
    regex(/href=.*?SAOImageDS9%2520v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "SAOImageDS9.app"
end
