cask 'enpass' do
  version '6.4.1.643'
  sha256 '4dc48f1ef867194a57dd34a262b7fd0826e9e32fcc4c22feab14eb006760ad07'

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  appcast 'https://rest.enpass.io/enpass/alert/?format=json&language=en%7Cen&os=osx%7C10.14&package=in.sinew.Enpass-Desktop.App&version=0.0.0'
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :sierra'

  pkg 'Enpass.pkg'

  uninstall pkgutil: 'in.sinew.Enpass-Desktop.App'

  zap trash: [
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
               '~/Library/Caches/in.sinew.Enpass-Desktop',
               '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
               '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
             ]
end
