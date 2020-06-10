cask 'eclipse-testing' do
  version '4.15.0,2020-03:R'
  sha256 'bbaf313028ce4dc0c65c9efb1d2cdb6c323c9b396e8739d91b6f56a09e570b64'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Testers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Testing.app'
end
