cask 'eclipse-modeling' do
  version '4.11.0,2019-03:R'
  sha256 '91a01856a9dd33a5b6e8d9d5d4acb19e75ee06afb18919090fd6d7a46aedeac9'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Modeling.app'
end
