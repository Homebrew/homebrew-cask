cask 'macpaw-gemini' do
  version '1.5.15,1458054655'
  sha256 '187498bfc83cc8ff84c604ba52e1a28f564156e6d7a686870f1ae938ebeb4da9'

  # devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini/#{version.before_comma}/#{version.after_comma}/MacPawGemini-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml',
          checkpoint: '3de2c7b377fb8684e7038c330fa4dd3ba2bb2119a458e33834f57dcb9f32c3bf'
  name 'MacPaw Gemini'
  homepage 'https://macpaw.com/gemini'
  license :commercial

  app 'MacPaw Gemini.app'

  zap delete: [
                '~/Library/Application Support/MacPaw Gemini',
                '~/Library/Caches/com.macpaw.site.Gemini',
                '~/Library/Preferences/com.macpaw.site.Gemini.plist',
                '~/Library/Saved Application State/com.macpaw.site.Gemini.savedState',
              ]
end
