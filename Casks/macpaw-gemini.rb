cask 'macpaw-gemini' do
  version '1.5.17,1461238766'
  sha256 'dc5ff641b38cb5798a26dc1b49f7c06566de5a79234f4a31c50eb6d2d985fcda'

  # devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini/#{version.before_comma}/#{version.after_comma}/MacPawGemini-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml',
          checkpoint: '8746733eba43d74853ec04ad49467f7be9bcfcb62d047eac5a2af25aab554367'
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
