cask 'eclipse-php' do
  version '4.12.0,2019-06:R'
  sha256 '5562d1e525c930d2bda84f062c94f9699645b6009b45457a10ac1599ab94bd74'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for PHP Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PHP.app'
end
