cask 'swiftybeaver' do
  version '1.0.4'
  sha256 '7253a1717db5e12490e1eae1c08bd54ec438ff2da0ab8ea93cda195ec9c04958'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: 'dee163cce9bcb8ab3de32a3ea9e7b4dfcefd1e8b4ae9ee0e2303634eaef6b233'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'

  app 'SwiftyBeaver.app'
end
