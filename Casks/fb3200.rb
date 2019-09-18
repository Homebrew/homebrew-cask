cask 'fb3200' do
  version '1.0.4'
  sha256 '0f307ce02af4eb009661de169224e8fe5a9fbac1a81b2cb76c99c86859a7243f'

  url "https://www.fullbucket.de/music/dl/fb3200_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fb3200.html'
  name 'FB-3200'
  homepage 'https://www.fullbucket.de/music/fb3200.html'

  pkg "fb3200_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.FB3200',
                       'com.fullbucket.vst.pkg.FB3200',
                     ]

  caveats do
    reboot
  end
end
