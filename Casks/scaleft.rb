cask 'scaleft' do
  version '1.40.7'
  sha256 '3c8c26d38bcecd3324eedc5d23ca73ffadebdf52942b86b4b85a3b5f6bfde4ff'

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg'
  name 'ScaleFT'
  homepage 'https://www.scaleft.com/docs/sft-osx/'

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: 'com.scaleft.ScaleFT'

  zap trash: '~/Library/Caches/com.scaleft.ScaleFT'
end
