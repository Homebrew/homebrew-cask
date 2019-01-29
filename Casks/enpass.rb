cask 'enpass' do
  version '6.0.3,319'
  sha256 '1ffa58e6784ea086e89592e13bbf6a4d23419789a2752eb0f23e1a1e37b5dce7'

  url "https://dl.enpass.io/stable/mac/package/#{version.after_comma}/Enpass.pkg"
  appcast 'https://dl.sinew.in/mac/package/appcast.xml'
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  pkg 'Enpass.pkg'

  uninstall pkgutil: 'in.sinew.Enpass-Desktop.App'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
               '~/Library/Caches/in.sinew.Enpass-Desktop',
               '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
               '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
             ]
end
