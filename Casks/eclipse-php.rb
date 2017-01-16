cask 'eclipse-php' do
  version '4.6.2,neon:2'
  sha256 '2dc3d7ae523f55dab1c64a2a30b0a8f6e42d4372cecfaeb4230ad2c63dfb7dbd'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
