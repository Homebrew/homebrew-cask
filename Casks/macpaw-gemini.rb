cask 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.macpaw.site.Gemini/MacPawGemini.dmg'
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml',
          :sha256 => '6cf998626b284ae5275d2adce4a9ca24120204a06e206acf9ce43747c8d5470f'
  name 'MacPaw Gemini'
  homepage 'https://macpaw.com/gemini'
  license :commercial

  app 'MacPaw Gemini.app'

  zap :delete => [
                   '~/Library/Application Support/MacPaw Gemini',
                   '~/Library/Caches/com.macpaw.site.Gemini',
                   '~/Library/Preferences/com.macpaw.site.Gemini.plist',
                   '~/Library/Saved Application State/com.macpaw.site.Gemini.savedState',
                 ]
end
