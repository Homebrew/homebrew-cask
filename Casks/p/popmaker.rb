cask "popmaker" do
  version "0.3"
  sha256 "0bce402882c2ecbe0ff9eaeb0f225a0964b5a5ec4ae4cddf2a0d1aa63b0561dc"

  url "https://brettterpstra.com/downloads/PopMaker#{version}.zip"
  name "PopMaker"
  homepage "https://brettterpstra.com/2014/05/12/popmaker-popclip-extension-generator/"

  deprecate! date: "2024-10-14", because: :discontinued
  disable! date: "2025-10-14", because: :discontinued

  app "PopMaker.app"

  caveats do
    requires_rosetta
  end
end
