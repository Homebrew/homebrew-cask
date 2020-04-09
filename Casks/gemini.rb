cask 'gemini' do
  version '2.6.2,338:1586414123'
  sha256 'bd3ad509fa01d5e007e7d1f1c034ae17bb3b74d9a1f8f3b0b06dc416a6e65c66'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Gemini#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
  name 'Gemini'
  homepage 'https://macpaw.com/gemini'

  app "Gemini #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Gemini 2',
               '~/Library/Caches/com.macpaw.site.Gemini2',
               '~/Library/Preferences/com.macpaw.site.Gemini2.plist',
               '~/Library/Saved Application State/com.macpaw.site.Gemini2.savedState',
             ]
end
