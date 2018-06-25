cask 'oni' do
  version '0.3.6'
  sha256 '37bd52bc9ff788563664440a421abd200d85aeb9ff6aa1adf43bd455c271094b'

  # github.com/onivim/oni was verified as official when first introduced to the cask
  url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-osx.dmg"
  appcast 'https://github.com/onivim/oni/releases.atom'
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
