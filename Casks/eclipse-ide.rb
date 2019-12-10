cask 'eclipse-ide' do
  version '4.13.0,2019-09:R'
  sha256 '48b267bfb2ab2a57726f156b4f6692a5cb20d0b3e747696afe19aa04e708121a'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  app 'Eclipse.app'
end
