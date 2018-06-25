cask 'enpass' do
  version '5.6.10'
  sha256 'ee429ee0a182ed846326aab27b27a2f0fe08997368209f824a5dbdabd1f5663f'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
               '~/Library/Caches/in.sinew.Enpass-Desktop',
               '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
               '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
             ]
end
