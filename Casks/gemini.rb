cask 'gemini' do
  version '2.3.0'
  sha256 '26c9de9ba9b3e1b6866826f9db423e952cae3f1b1a6b54b9e861e28cc3c4d91c'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/Gemini#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: 'a88afe489f4a8a438fb76c83d042834c3d7c0694431fdc30f543c7d65fdc7f6e'
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
