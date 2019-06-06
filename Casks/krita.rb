cask 'krita' do
  version '4.2.1'
  sha256 '694aeff41714d9716b452f841b52925ae20bcbe8e16c01dbc8a575dbc3f7f88f'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  appcast 'https://download.kde.org/stable/krita/'
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
