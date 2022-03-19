cask "itk-snap" do
  version "3.8.0,20190612"
  sha256 "135405baf7abc900d17d9120798b104654a9bc271aa9476c9c1150d165ee5fd8"

  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.csv.first}-#{version.csv.second}-MacOS-x86_64.dmg",
      verified: "downloads.sourceforge.net/itk-snap/"
  name "ITK-SNAP"
  desc "Segment structures in 3D medical images"
  homepage "http://www.itksnap.org/pmwiki/pmwiki.php"

  livecheck do
    url "http://www.nitrc.org/frs/downloadlink.php/11444"
    strategy :header_match do |headers|
      match = headers["location"].match(/itksnap[._-]?(\d+(?:\.\d+)*)[._-]?(\d+(?:\.\d+)*)[._-]?MacOS-x86_64\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "ITK-SNAP.app"
end
