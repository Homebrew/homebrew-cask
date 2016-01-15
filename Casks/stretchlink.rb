cask 'stretchlink' do
  version :latest
  sha256 :no_check

  url 'http://stretchlinkapp.com/download/StretchLink.zip'
  appcast 'http://abyss.designheresy.com/stretchlink/stretchlink.xml',
          :checkpoint => '50db6bf7a27a9a4fe0b3c7f802913be1dfd54cbb85c9f42c7513184c9014f0c9'
  name 'StretchLink'
  homepage 'http://stretchlinkapp.com/'
  license :commercial

  app 'StretchLink.app'
end
