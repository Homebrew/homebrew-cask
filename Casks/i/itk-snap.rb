cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.0,20240422"
  sha256 arm:   "250c119c723398c2a88afa84015a0c08b082261f54f48f062ce0e8105b6eeaaa",
         intel: "f4414b5eed59599b233efbf1963a0684304fa35901cc61e2420ca623be0f8997"

  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.csv.first}-#{version.csv.second}-Darwin-#{arch}.dmg",
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
