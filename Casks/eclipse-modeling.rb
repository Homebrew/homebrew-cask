cask 'eclipse-modeling' do
  version '4.16.0,2020-06:R'
  sha256 '74ae00bfcb12c2bda36b16f0af536140d199c841c8b8aa597381a0a283b19f70'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Modeling.app'
end
