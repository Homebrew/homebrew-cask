cask 'get-iplayer-automator' do
  version '1.18.1,b20200217002'
  sha256 '3e00ab3db0c2dd822640f6077acec48a1b596e7412c9e799036a1675b5dc04cd'

  url "https://github.com/Ascoware/get-iplayer-automator/releases/download/v#{version.before_comma}/Get.iPlayer.Automator.v#{version.before_comma}.#{version.after_comma}.zip"
  appcast 'https://github.com/Ascoware/get-iplayer-automator/releases.atom',
          configuration: version.before_comma
  name 'Get iPlayer Automator'
  homepage 'https://github.com/Ascoware/get-iplayer-automator'

  app 'Get iPlayer Automator.app'
end
