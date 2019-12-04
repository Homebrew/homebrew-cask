cask 'get-iplayer-automator' do
  version '1.17.b20191130002'
  sha256 '44128ad80e31ed21c0cd1580041f4dec51ecc7b72e7383a9e0ce8f6bbde20be5'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor}/Get.iPlayer.Automator.v#{version.major_minor}.#{version.patch}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          configuration: version.major_minor
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
