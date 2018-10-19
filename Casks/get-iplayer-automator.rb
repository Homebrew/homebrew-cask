cask 'get-iplayer-automator' do
  version '1.13.16.b20181016001'
  sha256 '48badf60b62d55297b297479d3028d9ffe6c05b6988903f8dd6776ed6c215095'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.major_minor_patch}/Get.iPlayer.Automator.v#{version}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom'
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  depends_on macos: '>= :lion'

  app 'Get iPlayer Automator.app'
end
