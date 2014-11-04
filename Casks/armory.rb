class Armory < Cask
  version '0.92.3'
  sha256 '75d6b7566d6c40a93f7dcf995dfb778b577d0b4698cc52d1ecea8f6fadfdf460'

  url "https://s3.amazonaws.com/bitcoinarmory-releases/armory_#{version}_osx.tar.gz"
  homepage 'https://bitcoinarmory.com/'
  license :affero

  app 'Armory.app'
end
