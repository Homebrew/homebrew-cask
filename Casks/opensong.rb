cask "opensong" do
  version "3.4.8"
  sha256 "d3058292e406402bb1a65c4ed10d1e9c77fc9656d07ff381ed5f7904e1cd81b3"

  url "https://downloads.sourceforge.net/opensong/OpenSong/V#{version}%20Beta/OpenSong%20#{version}.pkg",
      verified: "sourceforge.net/opensong/"
  name "OpenSong"
  desc "Presentation software"
  homepage "http://www.opensong.org/"

  # This regex has to match unstable versions until the cask uses a stable
  # version again.
  livecheck do
    url "https://sourceforge.net/projects/opensong/rss?path=/OpenSong"
    regex(/OpenSong[\s._-]*?v?(\d+(?:[._]\d+)+(?:[\s._-]?(?:B(?:eta)?|RC)\d*)?)(?:[._-][^"']+?)?\.(?:dmg|pkg)/i)
  end

  pkg "OpenSong%20#{version}.pkg"

  uninstall pkgutil: "org.opensong.opensong"

  zap trash: [
    "~/Library/Preferences/org.opensong.opensong.plist",
    "~/Library/Saved Application State/org.opensong.opensong.savedState",
  ]
end
