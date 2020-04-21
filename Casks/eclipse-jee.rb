cask 'eclipse-jee' do
  version '4.15.0,2020-03:R'
  sha256 '9fbe1d6b52f84ded8ee9dec0faf740f9934225abbc40262c1ef8c576c50bf830'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-incubation-macosx-cocoa-x86_64.dmg&r=1"
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
