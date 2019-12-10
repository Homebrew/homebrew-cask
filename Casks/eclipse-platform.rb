cask 'eclipse-platform' do
  version '4.13,201909161045'
  sha256 '5c014eb7c200388a629b6a037ea037e933253680777214bfff630290af9d9191'

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
