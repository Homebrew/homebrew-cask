cask 'gemini' do
  version '2.303,1537359522'
  sha256 '1d4c7371ab88aad0295bcdf055eac2c11d82a2e1a2a7932e17c98a18dc249531'

  # dl.devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini#{version.major}/#{version.minor}/#{version.after_comma}/Gemini#{version.major}-#{version.minor}.zip"
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
