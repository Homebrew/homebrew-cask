cask 'get-iplayer-automator' do
  version '1.13.4.b20180501001'
  sha256 '1942885851bc761602c77d662756f64a50cbbedbaccd2392e701a565a0751770'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '9e639332bc8162dfef0d4ecbe2b339b40ed87c98ece45811da6a8df95a67e39e'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
