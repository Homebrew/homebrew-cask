class Kitematic < Cask
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/kite-installer/Kitematic.zip'
  homepage 'https://kitematic.com/'

  app 'Kitematic.app'
end
