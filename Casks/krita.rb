cask 'krita' do
  version '4.1.1'
  sha256 '5f172dafda7e344433a088f47cc86bb6df324ec60bb0df70add077cdcb871979'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :el_capitan'

  app 'krita.app'

  zap trash: [
               '~/Library/Application Support/krita',
               '~/Library/Preferences/kritadisplayrc',
               '~/Library/Preferences/kritarc',
               '~/Library/Saved Application State/org.krita.savedState',
             ]
end
