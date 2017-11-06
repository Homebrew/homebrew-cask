cask 'oni' do
  version '0.2.14'
  sha256 'd9097e43f0953b692acd17349b4302968d55b32722f7a5cf44631bf984046d3e'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: '4f6abd3776bcc171ce2511bd4a8146d6e6408611576a9f33e35ab5d312b7db2c'
  name 'Oni'
  homepage 'https://www.onivim.io/'

  app 'Oni.app'

  zap delete: '~/Library/Saved Application State/com.extropy.oni.savedState',
      trash:  [
                '~/.oni',
                '~/Library/Application Support/oni',
                '~/Library/Preferences/com.extropy.oni.helper.plist',
                '~/Library/Preferences/com.extropy.oni.plist',
              ]
end
