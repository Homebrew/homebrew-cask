cask 'eclipse-php' do
  version '4.15.0,2020-03:R'
  sha256 '36f185c4ca1d4aa6b509ab25f0a145d686a197832857598c9d302b76ea11061a'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for PHP Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PHP.app'
end
