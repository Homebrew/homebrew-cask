cask 'gemini' do
  version '2.3.8'
  sha256 '44ab91c03c71b10ba00d5e3e6c0ea2b63a16e1529fa1b34ea141f95a1f44f40c'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/Gemini#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml",
          checkpoint: 'b9d735bb41a35d6536d0ccaf64e73fd57a49cfb3991e58a15651c186f90dd8a4'
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
