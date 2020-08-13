cask "foldingtext" do
  version "2.2"
  sha256 "59bd73b1c72c228c1c9e95c441b9e5422eb6f32481d609acb5716131ccab55ec"

  # foldingtext.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg"
  appcast "https://foldingtext.s3.amazonaws.com/FoldingText.rss"
  name "FoldingText"
  homepage "https://www.foldingtext.com/"

  app "FoldingText.app"
end
