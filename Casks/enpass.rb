cask 'enpass' do
  version '6.1.2,495'
  sha256 'c02d10b4ba5a2fa38402c1a2af306837e5f55d181b76a894f8763856c0c473d8'

  url "https://dl.enpass.io/stable/mac/package/#{version.after_comma}/Enpass.pkg"
  appcast 'https://www.enpass.io/release-notes/macos-website-ver/'
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
