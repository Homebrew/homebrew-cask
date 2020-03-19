cask 'eclipse-dsl' do
  version '4.15.0,2020-03:R'
  sha256 '94d5c1212d36e2ed5f6e5eeecc757307507b36c37223405a26d90ad62ecb0824'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-dsl-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java and DSL Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse DSL.app'
end
