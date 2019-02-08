cask 'enpass' do
  version '6.0.5,333'
  sha256 'b0b7aee6609730ec593f5dc70f60b81db72a7bc7016d56a8c210ca170274b046'

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
