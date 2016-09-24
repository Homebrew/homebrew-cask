cask 'gemini' do
  version '2.2.2,1474365747'
  sha256 'a99b18d1e07d35f414ffc9348a8f300590ea48a5e50ab41b27653d60cfab11c5'

  # devmate.com/com.macpaw.site.Gemini2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini2/#{version.before_comma}/#{version.after_comma}/Gemini2-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini2.xml',
          checkpoint: '94818da12f213824999d9955518d9829071a973d763ddb911e09ccbdad786257'
  name 'Gemini'
  homepage 'https://macpaw.com/gemini'
  license :commercial

  app "Gemini #{version.major}.app"

  zap delete: [
                '~/Library/Application Support/Gemini 2',
                '~/Library/Caches/com.macpaw.site.Gemini2',
                '~/Library/Preferences/com.macpaw.site.Gemini2.plist',
                '~/Library/Saved Application State/com.macpaw.site.Gemini2.savedState',
              ]
end
