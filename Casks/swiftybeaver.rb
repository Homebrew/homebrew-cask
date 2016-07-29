cask 'swiftybeaver' do
  version '1.0.0'
  sha256 '587fff6681e03dbdbb732b6c81dd9ca87ca75b07d595603d9e458d8d438b4253'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: 'bb1cf2e9e32ff3abd9801baa33c1de197b050bdd7d49f9ec9896083d5c6efced'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
