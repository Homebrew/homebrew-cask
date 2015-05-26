cask :v1 => 'growlvoice' do
  version '2.0.3'
  sha256 '6c9e15b83894746e2bf9488228e95eb2f47520b1fdac728da52d16532e2ee979'

  url "http://www.growlvoice.com/trials/growlvoice-#{version}.zip"
  name 'GrowlVoice'
  appcast 'http://www.growlvoice.com/trials/appcast.xml',
          :sha256 => 'fe1d26972a9184bbe452eba1334f74e22b55fde54975a835c118532e243f7e92'
  homepage 'http://www.growlvoice.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GrowlVoice.app'
end
