cask 'stretchlink' do
  version :latest
  sha256 :no_check

  url 'http://stretchlinkapp.com/download/StretchLink.zip'
  appcast 'http://abyss.designheresy.com/stretchlink/stretchlink.xml',
          :sha256 => '22465f95f29e5e27dc098fa60d2058fada1ff0a2dddc559d69d349fc7cea5eee'
  name 'StretchLink'
  homepage 'http://stretchlinkapp.com/'
  license :commercial

  app 'StretchLink.app'
end
