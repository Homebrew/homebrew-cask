cask 'realforce' do
  version '1.0.2'
  sha256 '9db2e54faee1b3ecb4d727585827edbe0ce07940c2738e296ddaf0ccb28b0d5a'

  url "https://www.realforce.co.jp/support/download/Install%20REALFORCE%20Software_#{version.dots_to_hyphens}.pkg"
  appcast 'https://www.realforce.co.jp/support/download/index.html'
  name 'REALFORCE for Mac'
  homepage 'https://www.realforce.co.jp/support/download/index.html'

  pkg "Install REALFORCE Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: 'com.topre.installpkg.realforce'
end
