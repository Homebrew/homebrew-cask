cask "opensong" do
  version "3.4.8"
  sha256 "d3058292e406402bb1a65c4ed10d1e9c77fc9656d07ff381ed5f7904e1cd81b3"

  url "https://downloads.sourceforge.net/opensong/OpenSong/V#{version}%20Beta/OpenSong%20#{version}.pkg",
      verified: "sourceforge.net/opensong/"
  name "OpenSong"
  desc "Presentation software"
  homepage "http://www.opensong.org/"

  livecheck do
    regex(/OpenSong[\s._-]+?v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  pkg "OpenSong%20#{version}.pkg"

  uninstall pkgutil: "org.opensong.opensong"

  zap trash: [
    "~/Library/Preferences/org.opensong.opensong.plist",
    "~/Library/Saved Application State/org.opensong.opensong.savedState",
  ]
end
