cask "pdf-expert" do
  version "2.5.17,737"
  sha256 "b2bde16ea50a04045461b56ddf03e741951fac0504920982b8c6fab06bbb0e31"

  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg",
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
  depends_on macos: ">= :sierra"

  app "PDF Expert.app"
end
