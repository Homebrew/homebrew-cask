cask 'eclipse-ide' do
  version '4.15.0,2020-03:R'
  sha256 '2bd854713770bf52dbcc46fb860a09a2117178e33502c30652c584f62f5ec493'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  app 'Eclipse.app'
end
