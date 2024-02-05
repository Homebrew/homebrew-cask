cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "4.0.2,13696"
    sha256 "aba01235a44b9080fae2c5cf0b35485f96b335f1a50442ee4fb941d4c4846501"
  end
  on_intel do
    version "4.0.2,13697"
    sha256 "333071f6703e6d3a8554fcc33f2a632cf3106a0bdc230893807a4c288e9e13da"
  end

  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.csv.first}-Darwin-#{arch}.dmg",
      verified: "downloads.sourceforge.net/itk-snap/"
  name "ITK-SNAP"
  desc "Segment structures in 3D medical images"
  homepage "http://www.itksnap.org/pmwiki/pmwiki.php"

  livecheck do
    url "https://www.nitrc.org/frs/downloadlink.php/#{version.csv.second}"
    strategy :header_match do |headers|
      match = headers["location"].match(/itksnap[._-]?(\d+(?:\.\d+)*)[._-]?Darwin-#{arch}\.dmg/i)
      next if match.blank?

      "#{match[1]},#{version.csv.second}"
    end
  end

  app "ITK-SNAP.app"

  zap trash: [
    "~/Library/Application Support/itksnap.org",
    "~/Library/Preferences/org.itksnap.plist",
    "~/Library/Saved Application State/org.itksnap.savedState",
  ]
end
