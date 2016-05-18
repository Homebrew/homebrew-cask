cask 'swiftybeaver' do
  version '0.7.3'
  sha256 'ac081f5513bad1a446d64affb27c2506ad3ae67128dfed393795a7a082c0fc52'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '7fd6f635094990865d7b3fbc7afe336daf913ac0503f1b5f3889184b5df8ac16'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
