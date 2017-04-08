cask 'soundsource' do
  version '3.0.2'
  sha256 '04cf3d83102da384fad41ae0673250cb36ee4c15cdf6690b98dbf2cd88c2e84c'

  url 'https://rogueamoeba.com/soundsource/download/SoundSource.zip'
  appcast 'https://rogueamoeba.com/soundsource/releasenotes.php',
          checkpoint: '998b7b81e3a83bd741263661a535f6de541ed58a6020c76b69d250f084d2fc20'
  name 'SoundSource'
  homepage 'https://rogueamoeba.com/soundsource/'

  depends_on macos: '>= :yosemite'

  app 'SoundSource.app'
end
