cask 'macpaw-gemini' do
  version '1.5.14,1448360907'
  sha256 '07779ae4175a18c821bed55ab2776e403f8c50e0a94d3b44e5dae4552aa9753e'

  # devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini/#{version.before_comma}/#{version.after_comma}/MacPawGemini-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml',
          checkpoint: 'c5e98cb5ad6b531a34850e48b6cb29611cd504e6ee3c7d970cf651c6fe571baf'
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
