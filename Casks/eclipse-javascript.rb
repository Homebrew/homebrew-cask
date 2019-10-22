cask 'eclipse-javascript' do
  version '4.13.0,2019-09:R'
  sha256 '35d650642a557b740624409e7952ff9a7d39c85a401669dc1119d3b797cdec67'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for JavaScript and Web Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JavaScript.app'
end
