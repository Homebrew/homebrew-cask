cask 'eclipse-dsl' do
  version '4.12.0,2019-06:R'
  sha256 'c3c9e41f1e4a0c521be2613f849ab9363d6d2661478a9a35eca61b1d7339c398'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-dsl-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java and DSL Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse DSL.app'
end
