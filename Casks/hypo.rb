cask 'hypo' do
  version '0.5.5'
  sha256 'efd4703fd13d8bf527f8b3965f200de7737673e26f63b5e831208f2d7fc6fbbd'

  # hypo.github.io was verified as official when first introduced to the cask
  url "https://hypo.github.io/HypoAppPublic/hypo-#{version}.app.tbz"
  appcast 'https://hypo.github.io/HypoAppPublic/appcast.xml',
          checkpoint: '3e4b2547c4e1f3fdcf9cfa52ad540f2df3ed1e60ae167eb6c9b8b9f19ec57850'
  name 'hypo'
  homepage 'https://hypo.cc/mac.html'
  license :gratis

  app 'Hypo.app'

  zap delete: [
                '~/Library/Caches/cc.hypo.hypo',
                '~/Library/Preferences/cc.hypo.hypo.plist',
                '~/Library/Saved Application State/cc.hypo.hypo.savedState',
              ]
end
