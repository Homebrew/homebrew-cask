cask "foldingtext" do
  version "2.2"
  sha256 :no_check

  url "https://foldingtext.s3.amazonaws.com/FoldingText.dmg",
      verified: "foldingtext.s3.amazonaws.com/"
  name "FoldingText"
  desc "Markdown text editor with productivity features"
  homepage "https://www.foldingtext.com/"

  deprecate! date: "2024-11-01", because: :unmaintained
  disable! date: "2025-11-01", because: :unmaintained

  app "FoldingText.app"

  caveats do
    requires_rosetta
  end
end
