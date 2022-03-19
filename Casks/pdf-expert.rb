cask "pdf-expert" do
  version "2.5.20,755"
  sha256 "3f7a89f8af55c2b12c4b7515c89c36e85de97cb4711d202682427f5373677948"

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
