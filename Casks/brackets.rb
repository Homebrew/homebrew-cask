cask 'brackets' do
  version '1.11'
  sha256 '67a4a1d3eb394c838f14d65348858649927cc8811f1db275f2160fc514e614c3'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: 'e525c92ad8a10ef3d867a48bf043b688d58d6991acb1e177cc97ead215b4e0db'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap trash: [
               '~/Library/Application Support/Brackets',
               '~/Library/Preferences/io.brackets.appshell.plist',
             ]
end
