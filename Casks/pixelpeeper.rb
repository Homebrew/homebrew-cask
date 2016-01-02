cask 'pixelpeeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/PixelPeeper.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/pixelpeeper.php',
          :sha256 => 'e99ef5279c3f8f6c41bbde1f20b0dc2171ec7749872cdd0dbdd5eddd73cce831'
  name 'PixelPeeper'
  homepage 'https://www.irradiatedsoftware.com/labs'
  license :gratis

  app 'PixelPeeper.app'
end
