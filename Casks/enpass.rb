cask 'enpass' do
  version '6.1.0,437'
  sha256 '87d314dd3c47d9757915b3589a55e6355c116b9d09a56dce44d9a4b77f92cbcf'

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
