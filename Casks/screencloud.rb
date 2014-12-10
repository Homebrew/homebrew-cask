cask :v1 => 'screencloud' do
  version '1.1.6'
  sha256 '0858d973388be02514a7756233d06fabd8d9d44fb2d17a2859129337c03dc0d1'

  url "https://screencloud.net/files/mac/ScreenCloud-#{version}.dmg"
  homepage 'https://screencloud.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'ScreenCloud.app'
end
