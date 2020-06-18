cask 'eclipse-ide' do
  version '4.16.0,2020-06:R'
  sha256 'a2b7097702af90f200731773e8eb5e7867d382197bab5b4eaca68bb90d6ca7c0'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  app 'Eclipse.app'
end
