cask 'qyooo' do
  version '1.1.2'
  sha256 'afc0db2d9d471d19595718e140dc70e46082c267cddcbc884da5f2d67256f50a'

  url "https://www.fullbucket.de/music/dl/qyooo_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/qyooo.html'
  name 'the qyooo'
  homepage 'https://www.fullbucket.de/music/qyooo.html'

  pkg "qyooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.qyooo',
                       'com.fullbucket.vst.pkg.qyooo',
                     ]

  caveats do
    reboot
  end
end
