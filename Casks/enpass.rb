cask 'enpass' do
  version '6.3.3.603'
  sha256 '1c3dfc52ebc19a82e93ea8393e7a1af772981911a790f383138a7e1aeb7e555b'

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
