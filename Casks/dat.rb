cask 'dat' do
  version '2.0.0'
  sha256 '8b913ede12c047f658ba62c9753fb4afd4342fb3471fa255382a75058f9a263f'

  # github.com/datproject/dat-desktop was verified as official when first introduced to the cask
  url "https://github.com/datproject/dat-desktop/releases/download/v#{version}/dat-desktop-#{version}-mac.zip"
  appcast 'https://github.com/datproject/dat-desktop/releases.atom',
          checkpoint: '1746131bcd806395bb64105c9bde9a783f3aff6b36ad39f40a1e85cb8b34583b'
  name 'Dat Desktop'
  homepage 'https://datproject.org/'

  app 'Dat.app'

  zap trash: [
               '~/Library/Application Support/Dat',
               '~/Library/Caches/com.datproject.dat',
               '~/Library/Caches/com.datproject.dat.ShipIt',
               '~/Library/Preferences/com.datproject.dat.helper.plist',
               '~/Library/Preferences/com.datproject.dat.plist',
               '~/Library/Saved Application State/com.datproject.dat.savedState',
               '~/.dat',
               '~/.dat-desktop',
             ]
end
