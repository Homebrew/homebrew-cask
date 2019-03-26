cask 'soundsource' do
  version '4.0.0'
  sha256 '1a5bc1dc714e8cec80aebf92d14b200fc094e8066ca5bf49b8a41a6a37788ae5'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :el_capitan'

  app 'SoundSource.app'
end
