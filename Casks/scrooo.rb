cask 'scrooo' do
  version '1.2.3'
  sha256 'fc54b027ee5af318c7f438fa8f568ca70e915e6cc6f015b7fb47ed8de2dbd0f1'

  url "https://www.fullbucket.de/music/dl/scrooo_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/scrooo.html'
  name 'the scrooo'
  homepage 'https://www.fullbucket.de/music/scrooo.html'

  pkg "scrooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.Scrooo',
                       'com.fullbucket.vst.pkg.Scrooo',
                     ]

  caveats do
    reboot
  end
end
