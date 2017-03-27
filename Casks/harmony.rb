cask 'harmony' do
  version '0.5.1'
  sha256 'bb8ba73f4df501c7d629a0917a7615df3984dc97b790d03f09bba33673be820d'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'b83f72cd87ac55593fe49a0618dd8a845e868a41617ba248de345ae4b62db802'
  name 'Harmony'
  homepage 'https://getharmony.xyz/'

  app 'Harmony.app'

  zap delete: [
                '~/Library/Application Support/Harmony',
                '~/Library/Preferences/com.vincelwt.harmony.helper.plist',
                '~/Library/Preferences/com.vincelwt.harmony.plist',
                '~/Library/Saved Application State/com.vincelwt.harmony.savedState',
              ]
end
