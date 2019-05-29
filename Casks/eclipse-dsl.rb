cask 'eclipse-dsl' do
  version '4.11.0,2019-03:R'
  sha256 'e89c05977cbcc53b2127663953366765b64efce9b1c6c3d6f7baf4eb75d52043'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-dsl-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java and DSL Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse DSL.app'
end
