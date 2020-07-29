cask 'eclipse-rcp' do
  version '4.16.0,2020-06:R'
  sha256 'a2a0e8c2505e5ab75dd39d275dd16cc99c7e656ee22d6038e2efe54d5e46117e'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse RCP.app'
end
