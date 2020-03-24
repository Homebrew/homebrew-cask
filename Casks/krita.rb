cask 'krita' do
  version '4.2.9'
  sha256 '1947aadbca6a6bfd7089f05076a72894623fb003eabc7653066e95382025671e'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/krita/#{version}/krita-x64-#{version}.zip"
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
