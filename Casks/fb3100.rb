cask 'fb3100' do
  version '1.1.7'
  sha256 '7a224a6fba5215999348d1698c9a637b52dbb7856da66d125b60ffae0589c3f2'

  url "https://www.fullbucket.de/music/dl/fb3100_#{version.dots_to_underscores}_mac.pkg"
  appcast 'https://www.fullbucket.de/music/fb3100.html'
  name 'FB-3100'
  homepage 'https://www.fullbucket.de/music/fb3100.html'

  pkg "fb3100_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
                       'com.fullbucket.audiounit.pkg.FB3100',
                       'com.fullbucket.vst.pkg.FB3100',
                     ]

  caveats do
    reboot
  end
end
