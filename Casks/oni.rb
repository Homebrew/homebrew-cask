cask 'oni' do
  version '0.2.20'
  sha256 '54d56693a6b6e7c91c74794b96f424da6e5ef04aa2f80f6caffd1762480a4609'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom',
          checkpoint: '3f955f6c8a3a729a7ec51a2be7abdc50d573e81c9815e5c365f19db94c85b1a3'
  name 'Oni'
  homepage 'https://www.onivim.io/'

  app 'Oni.app'
  binary "#{appdir}/Oni.app/Contents/Resources/app/oni.sh", target: 'oni'

  zap trash: [
               '~/.oni',
               '~/Library/Application Support/oni',
               '~/Library/Preferences/com.extropy.oni.helper.plist',
               '~/Library/Preferences/com.extropy.oni.plist',
               '~/Library/Saved Application State/com.extropy.oni.savedState',
             ]
end
