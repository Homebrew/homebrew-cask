cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  version "4.0.2"
  sha256 arm:   "aba01235a44b9080fae2c5cf0b35485f96b335f1a50442ee4fb941d4c4846501",
         intel: "333071f6703e6d3a8554fcc33f2a632cf3106a0bdc230893807a4c288e9e13da"

  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.csv.first}-Darwin-#{arch}.dmg",
      verified: "downloads.sourceforge.net/itk-snap/"
  name "ITK-SNAP"
  desc "Segment structures in 3D medical images"
  homepage "http://www.itksnap.org/pmwiki/pmwiki.php"

  livecheck do
    url "https://sourceforge.net/projects/itk-snap/rss?path=/itk-snap"
    regex(%r{url=.*?/itksnap[._-]v?(\d+(?:\.\d+)+)(?:-(\d+(?:\.\d+)*))?[._-]Darwin[._-]#{arch}\.dmg}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  app "ITK-SNAP.app"

  zap trash: [
    "~/Library/Application Support/itksnap.org",
    "~/Library/Preferences/org.itksnap.plist",
    "~/Library/Saved Application State/org.itksnap.savedState",
  ]
end
