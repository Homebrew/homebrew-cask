cask 'eclipse-platform' do
  version '4.11.0,201903070500'
  sha256 '62123c4c2295da22f65d1cabac6ff15d3380dc0a8630ea35fe602609a73bfbb0'

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
