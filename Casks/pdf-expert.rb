cask "pdf-expert" do
  version "2.5.21,761"
  sha256 "7906dc0b154c928a2b6c5c341336a1fec5f9c6ba059de08b8c91eca160f94ff6"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.csv.second}/PDFExpert.dmg",
      verified: "d1ke680phyeohy.cloudfront.net/versions/"
  name "PDF Expert"
  desc "PDF reader, editor and annotator"
  homepage "https://pdfexpert.com/"

  livecheck do
    url "https://d1ke680phyeohy.cloudfront.net/release/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/pdf-expert-beta"
  depends_on macos: ">= :high_sierra"

  app "PDF Expert.app"
end
