cask 'macpaw-gemini' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'https://dl.devmate.com/com.macpaw.site.Gemini/MacPawGemini.dmg'
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml',
          :checkpoint => 'c5e98cb5ad6b531a34850e48b6cb29611cd504e6ee3c7d970cf651c6fe571baf'
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
