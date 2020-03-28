cask 'scaleft' do
  version '1.44.2'
  sha256 '5352f3bec33d9457bbfc16d8375e3934c8307f7db32748926dfff7d04702cf05'

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg'
  name 'ScaleFT'
  homepage 'https://www.scaleft.com/docs/sft-osx/'

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: 'com.scaleft.ScaleFT'

  zap trash: '~/Library/Caches/com.scaleft.ScaleFT'
end
