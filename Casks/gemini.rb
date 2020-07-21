cask 'gemini' do
  version '2.6.5,341:1595189415'
  sha256 '3eb8484488942f8c78f85b7b2840f4bcd20363c01a4646d100c451bddcd10b05'

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
