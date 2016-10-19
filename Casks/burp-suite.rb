cask 'burp-suite' do
  version '1.7.06'
  sha256 'ce2da473fdb65f4704ad6597dcd6615ec84e7a4c3c81deaf4f2de360d362a9bd'

  url "https://portswigger.net/Burp/Releases/Download?productId=100&version=#{version}&type=MacOsx"
  name 'Burp Suite'
  homepage 'https://portswigger.net/burp/'

  installer manual: 'Burp Suite Free Edition Installer.app'

  uninstall delete: '/Applications/Burp Suite Free Edition.app'

  zap delete: '~/.BurpSuite'

  caveats do
    depends_on_java
  end
end
