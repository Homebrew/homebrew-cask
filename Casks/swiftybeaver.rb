cask 'swiftybeaver' do
  version '0.8.2'
  sha256 '86932a176118fdcf29d8e38333b8e313f4f5911e6ed9a0ca2102c50b0a0bc467'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '0be46babca66a5410446e6671bfd635ce2e111253325df22b3f1a3903df65242'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
