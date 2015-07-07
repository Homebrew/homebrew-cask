cask :v1 => 'pixelpeeper' do
  version :latest
  sha256 :no_check

  url 'https://www.irradiatedsoftware.com/download/PixelPeeper.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/pixelpeeper.php'
  name 'PixelPeeper'
  homepage 'https://www.irradiatedsoftware.com/labs'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PixelPeeper.app'
end
