cask "pdf-expert" do
  version "2.5.10,714"
  sha256 "fd8d1b3f147cdfe8fa79f66d9be4ce9907e2f302e82ece6b172ef7d797d82eef"

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast "https://d1ke680phyeohy.cloudfront.net/release/appcast.xml"
  name "PDF Expert"
  homepage "https://pdfexpert.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
