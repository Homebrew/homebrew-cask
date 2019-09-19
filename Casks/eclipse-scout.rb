cask 'eclipse-scout' do
  version '4.13.0,2019-09:R'
  sha256 '204879a51d99c7faea6c664fd4e8201670dc9d035f21619abe1c936bf2f8df81'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-scout-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Scout Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Scout.app'
end
