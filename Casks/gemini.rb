cask 'gemini' do
  version '2.1.0,1464094756'
  sha256 '63453274fcda09cfa34b2032c1c779cf6d80f31209eaa115ac512b4631b90349'

  # devmate.com/com.macpaw.site.Gemini2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini2/#{version.before_comma}/#{version.after_comma}/Gemini2-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini2.xml',
          checkpoint: 'bd417aa8ad482c7ef89200581fc6f4a2abbd6f3ca0b09229327f1ca5ad1a9112'
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
