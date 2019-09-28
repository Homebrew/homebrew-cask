cask 'polycom-content' do
  version '1.3.1.71333'
  sha256 'deca6466fc2568c8817e24305db9cb87d3059315ada41e2a44e5efb01c045a5e'

  url "https://downloads.polycom.com/video/content-app/PolycomContentApp_#{version.dots_to_underscores}.dmg"
  appcast 'https://support.polycom.com/content/support/north-america/usa/en/support/video/polycom-content-app.html',
          configuration: version.dots_to_underscores
  name 'Polycom Content App'
  homepage 'https://www.polycom.com/content-collaboration/content-sharing/content-app.html'

  pkg 'PolycomContentApp.pkg'

  uninstall pkgutil: 'com.polycom.PolycomPanoApp'
end
