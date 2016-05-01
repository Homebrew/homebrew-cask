cask 'swiftybeaver' do
  version '0.7.2'
  sha256 'e8e87a73438e92a70a6026d36ca66b317dbdee822b0159dba89e6a06c759ee4b'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: 'acfbdeb4d7e2bd30ad758e72631c4ef60f173c22302577ca1f05a1bf836dc98e'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
