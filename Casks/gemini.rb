cask 'gemini' do
  version '2.3.1'
  sha256 'a55b7a90eeac893ce5b799e2182dd80713c9633742a326d1ab94e2d1be294d61'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/Gemini#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: '8c05d7bdcc1807a2d20cbf508b64109c54c3ca35e7d19424b1dca2030ac012bb'
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
