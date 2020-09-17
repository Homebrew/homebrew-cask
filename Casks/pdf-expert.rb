cask "pdf-expert" do
  version "2.5.11,716"
  sha256 "1a8d76f5cd454b55dfc183143603df3add757c79ee9dded31478a95eff9e5b03"

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast "https://d1ke680phyeohy.cloudfront.net/release/appcast.xml"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
