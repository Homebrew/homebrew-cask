cask 'growlvoice' do
  version '1.7.1'
  sha256 '23c78d76060730e7f252cad0111841e1198247697b6ba7e6dea76907ef361194'

  url "http://www.growlvoice.com/trials/growlvoice-#{version}.zip"
  appcast 'http://www.growlvoice.com/trials/appcast.xml',
          checkpoint: '50b95db0510b841fc1cbfe7110d043b1a1eb56239a2284636e399b6f2d436d4f'
  name 'GrowlVoice'
  homepage 'http://www.growlvoice.com/'

  app 'GrowlVoice.app'
end
