cask 'krita' do
  version '4.2.7.1'
  sha256 'eca62444e27ed51b177e75e9e674d726285e58483b41a37fa2b0d0ad2a8b34ba'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  appcast 'https://download.kde.org/stable/krita/',
          configuration: version.major_minor_patch
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :sierra'

  app 'krita.app'

  zap trash: [
               '~/Library/Application Support/krita',
               '~/Library/Preferences/kritadisplayrc',
               '~/Library/Preferences/kritarc',
               '~/Library/Saved Application State/org.krita.savedState',
             ]
end
