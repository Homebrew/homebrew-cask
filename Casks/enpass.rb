cask 'enpass' do
  version '6.0.1,293'
  sha256 'f436efa530c71b794c213492de821e9f2c831975abe84bb3a564bc505a08725c'

  url "https://dl.enpass.io/stable/mac/app/#{version.after_comma}/Enpass.zip"
  appcast 'https://dl.sinew.in/mac/package/appcast.xml'
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  app 'Enpass.app'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
               '~/Library/Caches/in.sinew.Enpass-Desktop',
               '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
               '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
             ]
end
