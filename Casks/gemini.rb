cask 'gemini' do
  version '2.4.1'
  sha256 '1bab43d6b7be266de6131b85f59eca44d2e7dc714856d8143c8a8dad209ea5c0'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/Gemini#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: '2066b9ea37f8cd94d0c496b7fecc95158729e03c2eaf3edf54e54dd1f31fbe26'
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
