cask 'eclipse-jee' do
  version '4.8.0,photon:R'
  sha256 '58c55dec09de4e1c8e5953700f68c614a4e67d35d75a190a9b6b76aef3ea5a8c'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
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
