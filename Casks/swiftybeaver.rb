cask 'swiftybeaver' do
  version '0.9.0'
  sha256 '83906b1238c248052fcd3b7c00bab32425d25506194406874194b761425f7e0c'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '22085079da1922de2930d9467a7b9c7c31fe57c612abc1dafe6f53ac86db0f90'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
