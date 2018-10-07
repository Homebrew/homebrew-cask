cask 'iupx' do
  version '1.2'
  sha256 '24f2bc2dacd31ce7f3dd883b70b32fc9b8cea447a7b309333108b9888cb194d5'

  # downloads.sourceforge.net/iupx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/iupx/iUPX_#{version.sub('.', '_')}_universal.zip"
  appcast 'https://iupx.sourceforge.io/updates/appcast.xml'
  name 'iUPX'
  homepage 'https://iupx.sourceforge.io/'

  app 'iUPX.app'
end
