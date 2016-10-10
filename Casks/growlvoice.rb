cask 'growlvoice' do
  version '2.0.3'
  sha256 '6c9e15b83894746e2bf9488228e95eb2f47520b1fdac728da52d16532e2ee979'

  url "http://www.growlvoice.com/trials/growlvoice-#{version}.zip"
  appcast 'http://www.growlvoice.com/trials/appcast.xml',
          checkpoint: '415d7e6dcc19144b6f776d979521815c7d3768764d32a16c408890454d66ab83'
  name 'GrowlVoice'
  homepage 'http://www.growlvoice.com/'

  app 'GrowlVoice.app'
end
