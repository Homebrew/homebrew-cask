cask 'scaleft' do
  version '1.45.3'
  sha256 'b9597adfcceff20402893f64c142c7d10395814cd04c12578312e050ef762540'

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg'
  name 'ScaleFT'
  homepage 'https://www.scaleft.com/docs/sft-osx/'

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: 'com.scaleft.ScaleFT'

  zap trash: '~/Library/Caches/com.scaleft.ScaleFT'
end
