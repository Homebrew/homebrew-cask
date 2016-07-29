cask 'kompozer' do
  version '0.8b3'
  sha256 '415e019c9b3ec1c76465bf4f561fa515f403e57ac6f92c76365d902241dc14ed'

  # downloads.sourceforge.net/project/kompozer was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/kompozer/current/#{version}/macosx/kompozer-#{version}.en-US.mac-universal.dmg"
  name 'KompoZer'
  homepage 'http://www.kompozer.net/'
  license :oss

  app 'KompoZer.app'
end
