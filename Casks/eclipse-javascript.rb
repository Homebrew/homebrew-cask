cask 'eclipse-javascript' do
  version '4.11.0,2019-03:R'
  sha256 '91b749d1c53fb6193a330880e9993db418ccfc92e870f8f1df996043868e5862'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for JavaScript and Web Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JavaScript.app'
end
