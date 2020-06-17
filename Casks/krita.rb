cask 'krita' do
  version '4.3.0'
  sha256 '5a8da4d00dc2678a865a3d4938eba4b1a739fc92ffc700e91eae56b67162ce28'

  # kde.org/stable/krita/ was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  appcast 'https://download.kde.org/stable/krita/',
          must_contain: version.major_minor_patch
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
