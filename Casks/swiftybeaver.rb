cask 'swiftybeaver' do
  version '0.7.0'
  sha256 'ecb636b58fde06307a3875c3221b53f122e53c9b460db20bc88865211330a25a'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: 'a98626de43749ccb471858f2fd7155728dae1474de37083b39f2d8c8590a3c0e'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
