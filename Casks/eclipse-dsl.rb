cask 'eclipse-dsl' do
  version '4.9.0,2018-09:R'
  sha256 '5eb75b9e69e62d6af4d84c0eadf67ecf296efd0fd13adf0209889a96ce13c0c6'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-dsl-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java and DSL Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse DSL.app'
end
