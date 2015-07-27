cask :v1 => 'beatport-pro' do
  version '2.2.0_158'
  sha256 '5fc4a6a607ca8a1beef2e69099eb57e6219bc98df0af26348d6d80bb1b3c1ab3'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => '41b5e2bb1ff833e9d92211874d6d71a1636234a3b9a5fc0dd72b57a6d2dde35e'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
