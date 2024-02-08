cask "popmaker" do
  version "0.3"
  sha256 "0bce402882c2ecbe0ff9eaeb0f225a0964b5a5ec4ae4cddf2a0d1aa63b0561dc"

  url "https://brettterpstra.com/downloads/PopMaker#{version}.zip"
  name "PopMaker"
  homepage "https://brettterpstra.com/2014/05/12/popmaker-popclip-extension-generator/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/PopMaker(\d+(?:\.\d+)*)\.zip}i)
  end

  app "PopMaker.app"
end
