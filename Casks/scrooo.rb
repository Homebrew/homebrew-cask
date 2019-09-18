cask 'scrooo' do
  version '1.2.4'
  sha256 'b3be7c96af97552c95074f47a5cf53713e179675a798b23377a562a4b278acfd'

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
