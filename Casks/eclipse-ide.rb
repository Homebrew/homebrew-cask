cask 'eclipse-ide' do
  version '4.11.0,2019-03:R'
  sha256 '1b2aa90766c3e7e2fcb8aefcdf7e877e87b4b5b398fb41b7aef0f701e72a170c'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  app 'Eclipse.app'
end
