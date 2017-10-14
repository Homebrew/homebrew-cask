cask 'krita' do
  version '3.3.1'
  sha256 '25309dcd046598eb8e2e3607e998572b05ba76f3a2f89c3f576e1a4e58848187'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'

  zap delete: '~/Library/Saved Application State/org.krita.savedState',
      trash:  [
                '~/Library/Application Support/krita',
                '~/Library/Preferences/kritadisplayrc',
                '~/Library/Preferences/kritarc',
              ]
end
