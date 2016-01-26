cask 'pixelpeeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/PixelPeeper.zip'
  name 'PixelPeeper'
  homepage 'https://www.irradiatedsoftware.com/labs'
  license :gratis

  app 'PixelPeeper.app'
end
