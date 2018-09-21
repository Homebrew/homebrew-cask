cask 'eclipse-jee' do
  version '2018-09,R'
  sha256 '5ca049d86362534815a169224604f44c8c32a162920697f04f2e4f0230450bcf'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.before_comma}/#{version.after_comma}/eclipse-jee-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

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
