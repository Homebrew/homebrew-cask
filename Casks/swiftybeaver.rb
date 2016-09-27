cask 'swiftybeaver' do
  version '1.0.3'
  sha256 'c3cacecef39a2c7f3f4a0af4a0ba14e951c4143f7d2c82066affde0c92f473c8'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '0827593e2f3880f4db763c1cfa97e272969e4753ebc75f0d0a8db0fd2bf63697'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
