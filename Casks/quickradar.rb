cask 'quickradar' do
  version '1.0b3'
  sha256 '9347de5c966bae6b5c1ca0521d3d8c965afdfb184740f8c170b2e5a02f902ee0'

  url "http://www.quickradar.com/#{version}.zip"
  appcast 'http://www.quickradar.com/appcast.xml',
          checkpoint: '56e93a67fa6149774b3477d167300f9f15e00a362db02b5a01ff1fc7034e133a'
  name 'QuickRadar'
  homepage 'http://www.quickradar.com/'

  app 'QuickRadar.app'
end
