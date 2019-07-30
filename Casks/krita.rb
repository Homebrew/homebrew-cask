cask 'krita' do
  version '4.2.4'
  sha256 'abe314837bd446ddae9b13ac1d2da10114f3caaa2c38de21ce48041653c1eb2d'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version.major_minor_patch}/krita-#{version}.dmg"
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
