cask "foldingtext" do
  version "2.2"
  sha256 :no_check

  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg",
      verified: "foldingtext.s3.amazonaws.com/"
  name "FoldingText"
  desc "Markdown text editor with productivity features"
  homepage "https://www.foldingtext.com/"

  no_autobump! because: :requires_manual_review

  deprecate! date: "2024-11-01", because: :unmaintained

  app "FoldingText.app"

  caveats do
    requires_rosetta
  end
end
