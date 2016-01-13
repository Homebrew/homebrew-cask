cask 'growlvoice' do
  version '2.0.3'
  sha256 '6c9e15b83894746e2bf9488228e95eb2f47520b1fdac728da52d16532e2ee979'

  url "http://www.growlvoice.com/trials/growlvoice-#{version}.zip"
  appcast 'http://www.growlvoice.com/trials/appcast.xml',
          :checkpoint => '7b155f127dc58f2584c31b19fe13ac74e7b096bd2f5ba4f2e57d1fd45c04f264'
  name 'GrowlVoice'
  homepage 'http://www.growlvoice.com/'
  license :commercial

  app 'GrowlVoice.app'
end
