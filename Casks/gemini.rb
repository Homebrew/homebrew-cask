cask 'gemini' do
  version '2.6.4,340:1594215088'
  sha256 'a49c3e180081eb20d3b9c75f3b457ec1fc5d8d8e56b641f197f13c137447ec71'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.after_comma.before_colon}/#{version.after_colon}/Gemini#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Gemini#{version.major}.xml"
  name 'Gemini'
  homepage 'https://macpaw.com/gemini'

  app "Gemini #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/Gemini*',
               '~/Library/Caches/com.macpaw.site.Gemini*',
               '~/Library/Cookies/com.macpaw.site.Gemini*.binarycookies',
               '~/Library/Logs/com.macpaw.site.Gemini*',
               '~/Library/Preferences/com.macpaw.site.Gemini*',
               '~/Library/Saved Application State/com.macpaw.site.Gemini*',
               "/Users/Shared/Gemini #{version.major}",
             ]
end
