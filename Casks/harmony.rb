cask 'harmony' do
  version '0.4.7'
  sha256 'b17649067dcb9f1810bdd684e08d70cf04289120945e34f271fdccd2db582fb2'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'c5f8e370155c76a02a08da9194809d405f5c257c1233628e0321c39b3f432970'
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
