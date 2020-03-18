cask 'eclipse-platform' do
  version '4.15.0,2020-03:R'
  sha256 '313b9921190d1b184bfa7432900ca2c42da9a3149e024da1a1731c6abbda1e8c'

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Platform.app'
end
