cask 'hypo' do
  version '0.5.8'
  sha256 '98686cc17a5973875d23682a3fbc00d98818c4a9dc8bab4ac90322f1af5d42ed'

  # hypo.github.io was verified as official when first introduced to the cask
  url "https://hypo.github.io/HypoAppPublic/hypo-#{version}.app.tbz"
  appcast 'https://hypo.github.io/HypoAppPublic/appcast.xml'
  name 'hypo'
  homepage 'https://hypo.cc/mac.html'

  app 'Hypo.app'

  zap trash: [
               '~/Library/Caches/cc.hypo.hypo',
               '~/Library/Preferences/cc.hypo.hypo.plist',
               '~/Library/Saved Application State/cc.hypo.hypo.savedState',
             ]
end
