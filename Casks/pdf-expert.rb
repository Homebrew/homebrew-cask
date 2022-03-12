cask "pdf-expert" do
  version "2.5.19,752"
  sha256 "3168dccd88db0ee0752d2b6dfb44c37d400ad03be9e6d9a2fb95c5ec9f213eb0"

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
