cask 'eclipse-platform' do
  version '4.11,201903070500'
  sha256 'b841c5878def4c191f566925b2655838c6103541e74e09095a94ac6a550445d0'

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
