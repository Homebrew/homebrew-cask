cask 'swiftybeaver' do
  version '1.0.2'
  sha256 '0414d5e714013d2c5c071240ab8bd9cfa3946ea0011e4954324f47cac63f42cf'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '69f510499fb8d82086684653098012d6410d82972e1ccbecb9bacc37b1d02541'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
