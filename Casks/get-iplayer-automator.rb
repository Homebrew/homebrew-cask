cask 'get-iplayer-automator' do
  version '1.9.7.b20171007004'
  sha256 'df328ef57d132711ca5977d9a9c2c06a27f9a94e6dcff37f1c03a6264d5c6f84'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          checkpoint: '98f4d0c791f23778e8fe7e86735ed1eed02537375014c2106c5bf78ce340add4'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= 10.7'

  app 'Get iPlayer Automator.app'
end
