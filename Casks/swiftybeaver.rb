cask 'swiftybeaver' do
  version '0.8.0'
  sha256 '39ccc1cf721ae6bccabd98060e6c3f2b392c58dc7d541c87e21ee282ef890291'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '8da4f2d5e4c12b40441e5f3343c37dad384341b2cc2c2badd5d4b553bc405d75'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
