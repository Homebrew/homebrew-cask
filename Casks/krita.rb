cask 'krita' do
  version '4.2.7.1'
  sha256 'ebf37150a449eb9977d1bafb40f1cbb59a5e14278a646fd80273a1300cd0bd11'

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
