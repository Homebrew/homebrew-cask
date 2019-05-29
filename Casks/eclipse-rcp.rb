cask 'eclipse-rcp' do
  version '4.11.0,2019-03:R'
  sha256 '321239b909da255f13955514ed3098d533603f97441b9700ef22fa9dc42dc182'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse RCP.app'
end
