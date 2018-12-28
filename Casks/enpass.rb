cask 'enpass' do
  version '6.0.0,281'
  sha256 '2c41b06b26001b1aab20be85ebd21ae27289a9b2c0fa3fb91fa7d0bf834fda07'

  url "https://dl.enpass.io/stable/mac/app/#{version.after_comma}/Enpass.zip"
  appcast 'https://dl.sinew.in/mac/package/appcast.xml'
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
               '~/Library/Caches/in.sinew.Enpass-Desktop',
               '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
               '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
             ]
end
