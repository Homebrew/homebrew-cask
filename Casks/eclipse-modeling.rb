cask 'eclipse-modeling' do
  version '4.15.0,2020-03:R'
  sha256 'fdc20ca5813e6b196d764b13b5cda2f0fd057ff8b1b1374397e3049359c9901e'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Modeling.app'
end
