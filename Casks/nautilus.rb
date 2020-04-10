cask 'nautilus' do
  version '1.2.0'
  sha256 'c810144c0b105539b01581b7c260c292472b0b83f8a60c23cc35f4b32dd077de'

  url "https://nautilusdev.com/release/Nautilus-#{version}.dmg"
  name 'Nautilus'
  homepage 'https://nautilusdev.com/'

  app 'Nautilus.app'

  zap trash: [
               '~/Library/Application Support/nautilus',
               '~/Library/Saved Application State/com.nautilus.app.savedState',
               '~/Library/Preferences/com.nautilus.app.plist',
             ]
end
