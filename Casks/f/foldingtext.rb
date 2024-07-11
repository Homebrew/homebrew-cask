cask "foldingtext" do
  version "2.2"
  sha256 :no_check

  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg",
      verified: "foldingtext.s3.amazonaws.com/"
  name "FoldingText"
  desc "Markdown text editor with productivity features"
  homepage "https://www.foldingtext.com/"

  livecheck do
    url "https://foldingtext.s3.amazonaws.com/FoldingText.rss"
    regex(/FoldingText\s+(\d+(?:\.\d+)+)/i)
  end

  app "FoldingText.app"

  caveats do
    requires_rosetta
  end
end
