cask 'krita' do
  version '4.2.9'
  sha256 '34b606dcdbdf1c3702cebc924b9c11e1c9181ca6a9d5fa91e605bbfca554df9b'

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
