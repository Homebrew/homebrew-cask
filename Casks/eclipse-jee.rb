cask 'eclipse-jee' do
  version '4.14.0,2019-12:R'
  sha256 'f42fdc31db424292f139c3306e13fa1e3d49fa453761071d13d87c0ce12683c7'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JEE.app'

  zap trash: [
               '~/Library/Caches/org.eclipse.platform.ide',
               '~/Library/Cookies/org.eclipse.platform.ide.binarycookies',
               '~/Library/Preferences/org.eclipse.platform.ide.plist',
               '~/Library/Saved Application State/org.eclipse.platform.ide.savedState',
             ]

  caveats do
    depends_on_java
  end
end
