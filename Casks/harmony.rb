cask 'harmony' do
  version '0.5.0'
  sha256 'e67c1b0d345768d1a323bfd4c8a9f2e302a5552f2e26632abe8dc97304ddaee2'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'f6dc0576624d60b4735804fd6d38e987ad66cfd6a04e6a47e79eaa52c88f40a2'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'

  zap delete: [
                '~/Library/Application Support/Harmony',
                '~/Library/Preferences/com.vincelwt.harmony.helper.plist',
                '~/Library/Preferences/com.vincelwt.harmony.plist',
                '~/Library/Saved Application State/com.vincelwt.harmony.savedState',
              ]
end
