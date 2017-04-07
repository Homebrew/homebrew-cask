cask 'eclipse-php' do
  version '4.6.3,neon:3'
  sha256 '0abe516f808eb01800b21d00cb89d07f474c7910115c5e2911780f8babd6be08'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse for PHP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PHP.app'
end
