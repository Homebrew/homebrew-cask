cask 'cord' do
  version '0.5.7'
  sha256 '8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100'

  url "http://downloads.sourceforge.net/sourceforge/cord/CoRD_#{version}.zip"
  appcast 'http://cord.sourceforge.net/sparkle.xml',
          checkpoint: 'b95960f88d2b092cc0748a60dbffb498d5b3852023565c1abcdce076cc44f249'
  name 'CoRD'
  homepage 'http://cord.sourceforge.net/'
  license :gpl

  app 'CoRD.app'

  zap delete: '~/Library/Application Support/CoRD'
end
