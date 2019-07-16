cask 'eclipse-rcp' do
  version '4.12.0,2019-06:R'
  sha256 '90a63d402d7422b886fda45962bee0824cfc529e9594d92f03a679219b492402'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse RCP.app'
end
