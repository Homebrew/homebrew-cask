cask 'stretchlink' do
  version '1.0.3-105'
  sha256 'a12b8199207009a4906d5bc54992bdccc91ff9c877c4d2b8730a2153d04c8180'

  # abyss.designheresy.com/stretchlink was verified as official when first introduced to the cask
  url "http://abyss.designheresy.com/stretchlink/stretchlink#{version.no_dots}.zip"
  appcast 'http://abyss.designheresy.com/stretchlink/stretchlink.xml',
          checkpoint: '24ee72f9dc64631fda556cda283c474f9acc0e976d6650e5f95e5270daff1496'
  name 'StretchLink'
  homepage 'http://stretchlinkapp.com/'

  app 'StretchLink.app'
end
