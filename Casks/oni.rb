cask 'oni' do
  version '0.2.14'
  sha256 'd9097e43f0953b692acd17349b4302968d55b32722f7a5cf44631bf984046d3e'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: '889527eb5cb9d63cfadc260c7a3eeec414ac9939fcd85d811fe3d112e9babce9'
  name 'Oni'
  homepage 'https://www.onivim.io/'

  app 'Oni.app'
  binary "#{appdir}/Oni.app/Contents/Resources/app/oni.sh", target: 'oni'

  zap delete: '~/Library/Saved Application State/com.extropy.oni.savedState',
      trash:  [
                '~/.oni',
                '~/Library/Application Support/oni',
                '~/Library/Preferences/com.extropy.oni.helper.plist',
                '~/Library/Preferences/com.extropy.oni.plist',
              ]
end
