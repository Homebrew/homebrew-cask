cask :v1 => 'pixelpeeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/PixelPeeper.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/pixelpeeper.php'
  homepage 'http://www.irradiatedsoftware.com/labs'
  license :unknown

  app 'PixelPeeper.app'
end
