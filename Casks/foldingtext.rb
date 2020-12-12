cask "foldingtext" do
  version "2.2,770"
  sha256 :no_check

  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg",
      verified: "foldingtext.s3.amazonaws.com/"
  appcast "https://foldingtext.s3.amazonaws.com/FoldingText.rss"
  name "FoldingText"
  homepage "https://www.foldingtext.com/"

  app "FoldingText.app"
end
