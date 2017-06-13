cask 'harmony' do
  version '0.6.0'
  sha256 'c992bf32f9910dd9673a661924cbd5a1e5c93d3007ea6811c2e2460ed4391886'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'f6460b5fa551bdea54f1b7cc3a1082897843f9fe847d29827709fb0458b94abc'
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
