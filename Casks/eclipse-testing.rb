cask 'eclipse-testing' do
  version '4.11.0,2019-03:R'
  sha256 '6dfdcfeddbe1feada08bc6521382c3e9e97de3d55581769828baa880f6fd9f42'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Testers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Testing.app'
end
