cask 'eclipse-java' do
  version '4.15.0,2020-03:R'
  sha256 '262c29ea38134360089232d8276fb479e3a9f70a5b1a6ffdf6463bc2aeac00f3'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Java.app'
end
