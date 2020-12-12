cask "foldingtext" do
  version "2.2,770"
  sha256 :no_check

  # foldingtext.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg"
  appcast "https://foldingtext.s3.amazonaws.com/FoldingText.rss"
  name "FoldingText"
  homepage "https://www.foldingtext.com/"

  app "FoldingText.app"
end
