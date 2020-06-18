cask 'eclipse-dsl' do
  version '4.16.0,2020-06:R'
  sha256 '0041186fb72520a1d87586be11324ea7d450a9887329307f2c39c8dd8bd07ad8'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-dsl-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java and DSL Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse DSL.app'
end
