cask 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.macpaw.site.Gemini/MacPawGemini.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.site.Gemini.xml',
          :sha256 => '2d207012f1af4396c5cd8a4aa7a889418862436dd0cdc63b4e54880fe306c8db'
  name 'MacPaw Gemini'
  homepage 'https://macpaw.com/gemini'
  license :commercial

  zap :delete => [
    '~/Library/Application Support/MacPaw Gemini',
    '~/Library/Caches/com.macpaw.site.Gemini',
    '~/Library/Preferences/com.macpaw.site.Gemini.plist',
    '~/Library/Saved Application State/com.macpaw.site.Gemini.savedState'
  ]

  app 'MacPaw Gemini.app'
end
