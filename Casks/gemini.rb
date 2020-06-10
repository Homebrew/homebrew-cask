cask 'gemini' do
  version '2.6.3,339:1588959090'
  sha256 '9edb7522cb87263be972e1fec5f93610fe0c7f09cf6e6a2a19a40c5c4f1a6f89'

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
