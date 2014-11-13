cask :v1 => 'growlvoice' do
  version '2.0.3'
  sha256 '6c9e15b83894746e2bf9488228e95eb2f47520b1fdac728da52d16532e2ee979'

  url "http://www.growlvoice.com/trials/growlvoice-#{version}.zip"
  homepage 'http://www.growlvoice.com/'
  license :unknown

  app 'GrowlVoice.app'
end
