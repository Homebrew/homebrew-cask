cask 'scaleft' do
  version '1.44.4'
  sha256 'ecd73c5d0fd2262282ed5cf7e93f85ba86aeec4171078be5e4f7ee0b38402b98'

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg'
  name 'ScaleFT'
  homepage 'https://www.scaleft.com/docs/sft-osx/'

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: 'com.scaleft.ScaleFT'

  zap trash: '~/Library/Caches/com.scaleft.ScaleFT'
end
