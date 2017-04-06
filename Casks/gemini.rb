cask 'gemini' do
  version '2.3.6'
  sha256 '2c08a1b8e84f0b9996bf9e62ba51a36fa2ea0c1492ed73fb6e3f7b86d5cf41e7'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/Gemini#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: '521dc202f258ce23e98b486fd1b30457dfc4e7c6a26370c83ed4a81a02955c6c'
  name 'Gemini'
  homepage 'https://macpaw.com/gemini'

  app "Gemini #{version.major}.app"

  zap delete: [
                '~/Library/Application Support/Gemini 2',
                '~/Library/Caches/com.macpaw.site.Gemini2',
                '~/Library/Preferences/com.macpaw.site.Gemini2.plist',
                '~/Library/Saved Application State/com.macpaw.site.Gemini2.savedState',
              ]
end
