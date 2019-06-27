cask 'krita' do
  version '4.2.2.3'
  sha256 'fa2d1e2fa28c4d4cc3d018cabab1c89ef393ad11b6adf3940447a50be047c61e'

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
