cask 'get-iplayer-automator' do
  version '1.9.9.b20171029001'
  sha256 '76f78a75d82b66964f4fb774bfa99bdbe7218cd36a3535521a02ef7eb5574091'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '95b4efbb463aa12eca8afc9ea7646791b287679c1b20a916fd13adf92aef9c60'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= 10.7'

  app 'Get iPlayer Automator.app'
end
