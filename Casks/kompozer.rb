cask :v1 => 'kompozer' do
  version '0.8b3'
  sha256 '415e019c9b3ec1c76465bf4f561fa515f403e57ac6f92c76365d902241dc14ed'

  url "https://downloads.sourceforge.net/project/kompozer/current/#{version}/macosx/kompozer-#{version}.en-US.mac-universal.dmg"
  homepage 'http://www.kompozer.net/'
  license :oss

  app 'KompoZer.app'
end
