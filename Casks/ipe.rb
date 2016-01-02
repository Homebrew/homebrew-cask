cask 'ipe' do
  version '7.2.1'
  sha256 '5c7620898eadfe05ee7e5ec5ef43439ee41f8aaf1b3babaf128ca4396dc41009'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/otfried/generic/ipe/#{version.to_f}/ipe-#{version}-mac.dmg"
  name 'Ipe'
  homepage 'http://ipe.otfried.org'
  license :gpl

  app 'Ipe.app'
end
