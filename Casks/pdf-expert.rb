cask "pdf-expert" do
  version "2.5.15,734"
  sha256 "c793faede34b8e553cad5bfc04cd4e4d709b791ca19e6f8cd514a7998bdbd0b3"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg",
      verified: "d1ke680phyeohy.cloudfront.net/versions/"
  appcast "https://d1ke680phyeohy.cloudfront.net/release/appcast.xml"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/pdf-expert-beta"
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
