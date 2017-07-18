cask 'psi' do
  version '0.15'
  sha256 '76d50b5314d0a7d9f9a0a71d90e0f806f2da25436135dbd90bd1959286747742'

  # sourceforge.net/psi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psi/Psi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/psi/rss',
          checkpoint: '176bb001a1e0f9c7847213e638e1daffe5d636ec1f2b396d2b9bb9013cf58e8a'
  name 'Psi'
  homepage 'http://psi-im.org/'

  app 'Psi.app'

  uninstall quit: 'org.psi-im'

  zap delete: [
                '~/Library/Saved Application State/org.psi-im.savedState',
                '~/Library/Caches/Psi',
                '~/Library/Application Support/Psi',
              ]
end
