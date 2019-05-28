cask 'krita' do
  version '4.2.0'
  sha256 '62c973ba149215402e8fd49e4fdc227bf768667ee56f78a969778ddb75fa4d9f'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  appcast 'https://download.kde.org/stable/krita/'
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
