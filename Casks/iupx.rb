cask 'iupx' do
  version '1.2'
  sha256 '24f2bc2dacd31ce7f3dd883b70b32fc9b8cea447a7b309333108b9888cb194d5'

  url "https://downloads.sourceforge.net/iupx/iUPX_#{version.sub('.', '_')}_universal.zip"
  appcast 'http://iupx.sourceforge.net/updates/appcast.xml',
          checkpoint: '832c7c6ad61cd12005420ccf661601ee8ed161ef6c908cd6e2597f0918360516'
  name 'iUPX'
  homepage 'http://iupx.sourceforge.net/'

  app 'iUPX.app'
end
