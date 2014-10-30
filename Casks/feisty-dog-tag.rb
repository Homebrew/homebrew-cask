class FeistyDogTag < Cask
  version '1.0.3'
  sha256 '3e995c86469d2161c03c825b333d1280aea82684adbd613053430da2b38ab57d'

  url "https://s3.amazonaws.com/feisty-dog/Tag.zip"
  homepage 'http://www.feisty-dog.com/tag/'
  license :commercial

  app "Tag.app"
end

