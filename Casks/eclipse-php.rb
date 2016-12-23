cask 'eclipse-php' do
  version '4.6.1,neon:1a'
  sha256 '4126090e0c88f97eac863e75a2657a4b6d29e7dac724dba28e95c4e32ce948d3'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
