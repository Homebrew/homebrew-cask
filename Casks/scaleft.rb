cask 'scaleft' do
  version '1.40.8'
  sha256 '1b9daef9cce461c7da405a4c243aa2328b4613941b22baacb908f1153d59db91'

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg'
  name 'ScaleFT'
  homepage 'https://www.scaleft.com/docs/sft-osx/'

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: 'com.scaleft.ScaleFT'

  zap trash: '~/Library/Caches/com.scaleft.ScaleFT'
end
