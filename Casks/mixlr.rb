cask 'mixlr' do
  version :latest
  sha256 :no_check

  url 'http://cdn.mixlr.com/Mixlr.pkg'
  name 'Mixlr'
  homepage 'http://mixlr.com/'

  pkg 'Mixlr.pkg'

  uninstall pkgutil: 'com.mixlr.pkg.Mixlr'

  zap trash: [
               '~/Library/Application Support/mixlr',
               '~/Library/Preferences/com.mixlr.Broadcaster.plist',
               '~/Library/Saved Application State/com.mixlr.Broadcaster.savedState',
             ]
end
