cask :v1 => 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.macpaw.site.Gemini/MacPawGemini.dmg'
  appcast 'http://updates.devmate.com/com.macpaw.site.Gemini.xml'
  name 'MacPaw Gemini'
  homepage 'https://macpaw.com/gemini'
  license :commercial
  tags :vendor => 'MacPaw'

  zap :delete => [
    '~/Library/Application Support/MacPaw Gemini',
    '~/Library/Caches/com.macpaw.site.Gemini',
    '~/Library/Preferences/com.macpaw.site.Gemini.plist',
    '~/Library/Saved Application State/com.macpaw.site.Gemini.savedState'
  ]

  app 'MacPaw Gemini.app'
end
