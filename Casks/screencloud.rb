cask 'screencloud' do
  version '1.2.0'
  sha256 'e1a1a569a77fa1f92d27df2c55e60c7c0fe73a03904ae2eb67bb01c68188ffd5'

  url "https://screencloud.net/files/mac/ScreenCloud-#{version}.dmg"
  name 'ScreenCloud'
  homepage 'https://screencloud.net/'

  app 'ScreenCloud.app'
end
