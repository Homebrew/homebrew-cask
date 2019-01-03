cask 'eclipse-php' do
  version '4.9.0,2018-09:R'
  sha256 'e7508c5880a4e5feb88469ea1d451006c4be27ce08ea5700c6eef560c0d175e8'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-php-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for PHP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse PHP.app'
end
