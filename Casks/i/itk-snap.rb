cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.0,20250909"
  sha256 arm:   "9d12dc5a437e3d0979ce62ad0550fe5c150337160e5417d80bf6396f2f716ee8",
         intel: "96c56c64bfe7a89adfe3b71d55c74e4711c73cb88dd85262d3a877443cfdea8b"

  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.csv.first}-#{version.csv.second}-Darwin-#{arch}.dmg",
      verified: "downloads.sourceforge.net/itk-snap/"
  name "ITK-SNAP"
  desc "Segment structures in 3D medical images"
  homepage "https://www.itksnap.org/pmwiki/pmwiki.php"

  livecheck do
    url "https://sourceforge.net/projects/itk-snap/rss?path=/itk-snap"
    regex(%r{url=.*?/itksnap[._-]v?(\d+(?:\.\d+)+)(?:-(\d+(?:\.\d+)*))?[._-]Darwin[._-]#{arch}\.dmg}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "ITK-SNAP.app"

  zap trash: [
    "~/Library/Application Support/itksnap.org",
    "~/Library/Preferences/org.itksnap.plist",
    "~/Library/Saved Application State/org.itksnap.savedState",
  ]
end
