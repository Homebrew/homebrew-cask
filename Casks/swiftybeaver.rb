cask 'swiftybeaver' do
  version '1.0.1'
  sha256 'c6eff002cd7f721f80592155c5b944248864d5256760a0e6961d8956aa0d76e2'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '6c432a723f934379158ec5a4cb5cae2ef993a1fef9048eefdd08b7c0f4d09718'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'
  license :mit

  app 'SwiftyBeaver.app'
end
