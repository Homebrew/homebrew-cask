cask "itk-snap" do
  arch arm: "arm64", intel: "x86_64"

  version "4.2.2,20241202"
  sha256 arm:   "424fe1e3b63195ac7c3bd0b844cedd51d2cbfe06fa6bb63f74d2bbb7682c96ca",
         intel: "db7a8e05baac941ebfc2c9cd64fd0a87493729c17eabde81919a20432b9a057c"

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
