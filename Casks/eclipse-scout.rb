cask 'eclipse-scout' do
  version '4.10.0,2018-12:R'
  sha256 'b83525b7bc0ba2ff1b11d912f6ae8f10daf36db3785ce565025c634b220b1fc6'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-scout-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Scout Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Scout.app'
end
