cask "pdf-expert" do
  version "2.5.13,730"
  sha256 "40e2f0bac6f515aa189bdcfa8019a51d46e1fdac79266d211490fd9ba3898759"

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
