cask :v1 => 'stretchlink' do
  version :latest
  sha256 :no_check

  url 'http://stretchlinkapp.com/download/StretchLink.zip'
  name 'StretchLink'
  appcast 'http://abyss.designheresy.com/stretchlink/stretchlink.xml',
          :sha256 => 'e9f19089d6229af9ca9647511e76068ca8f08e990b1d85bc6922933c7dd8a497'
  homepage 'http://stretchlinkapp.com/'
  license :commercial

  app 'StretchLink.app'
end
