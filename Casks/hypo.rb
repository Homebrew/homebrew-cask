cask 'hypo' do
  version '0.5.6'
  sha256 'd18f2e44dd23265280fb8eb28015006c93c5bbf98794437fbd7acd4f531028ae'

  # hypo.github.io was verified as official when first introduced to the cask
  url "https://hypo.github.io/HypoAppPublic/hypo-#{version}.app.tbz"
  appcast 'https://hypo.github.io/HypoAppPublic/appcast.xml',
          checkpoint: '8c662005d5f4ea9c75c0cbc53e5e0f432fedcf6d9dad6e8007ea8a12acccbe17'
  name 'hypo'
  homepage 'https://hypo.cc/mac.html'

  app 'Hypo.app'

  zap delete: [
                '~/Library/Caches/cc.hypo.hypo',
                '~/Library/Preferences/cc.hypo.hypo.plist',
                '~/Library/Saved Application State/cc.hypo.hypo.savedState',
              ]
end
