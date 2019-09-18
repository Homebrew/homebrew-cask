cask 'fb3300' do
  version '1.0.6'
  sha256 '98440e205c39d7b5599447c1ecd54f0fb35461ab3d84ec596c0fedf42efd2b03'

  url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fb3300.html'
  name 'FB-3300'
  homepage 'https://www.fullbucket.de/music/fb3300.html'

  pkg "fb3300_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.FB3300',
                       'com.fullbucket.vst.pkg.FB3300',
                     ]

  caveats do
    reboot
  end
end
