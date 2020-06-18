cask 'eclipse-javascript' do
  version '4.16.0,2020-06:R'
  sha256 '1b03e0b4d5df1178d893068cdd8de1fd1429f258335741dc8fceb493c4a04099'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for JavaScript and Web Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JavaScript.app'
end
