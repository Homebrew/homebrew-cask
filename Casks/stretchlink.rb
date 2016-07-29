cask 'stretchlink' do
  version '1.0.3-105'
  sha256 'a12b8199207009a4906d5bc54992bdccc91ff9c877c4d2b8730a2153d04c8180'

  url 'http://stretchlinkapp.com/download/StretchLink.zip'
  appcast 'http://abyss.designheresy.com/stretchlink/stretchlink.xml',
          checkpoint: '50db6bf7a27a9a4fe0b3c7f802913be1dfd54cbb85c9f42c7513184c9014f0c9'
  name 'StretchLink'
  homepage 'http://stretchlinkapp.com/'
  license :commercial

  app 'StretchLink.app'
end
