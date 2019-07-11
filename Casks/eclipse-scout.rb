cask 'eclipse-scout' do
  version '4.12.0,2019-06:R'
  sha256 '09249b233f49664c3729e7c1bec19631a6fca35e051dbb5132fc6909671a32b7'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-scout-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Scout Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Scout.app'
end
