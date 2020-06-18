cask 'eclipse-testing' do
  version '4.16.0,2020-06:R'
  sha256 'b9998ea9a897c70366a37560658ec718c97ffdf78015556dcc867df87504eb4c'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Testers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Testing.app'
end
