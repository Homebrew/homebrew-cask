cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  version "4.4.0,20250909"
  sha256 arm:   "b1472d81c71d94c5f6d92edddad61b53c813b02ec7e4f0f58c4eaf53d89a7f23",
         intel: "44d46ea5e358efab2876fbd8c5580b5cb71f3735df5b3678d5b5630551272655"

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
