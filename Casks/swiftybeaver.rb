cask 'swiftybeaver' do
  version '0.8.1'
  sha256 '1fad7d67f1ea8dd3753779160ee48c565fe6213646d695d0d379820ff22ddc76'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: 'b7e857bd867b59cab08eaf0c3345399db16fd6c75152a4f08b33d5f54992b664'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
