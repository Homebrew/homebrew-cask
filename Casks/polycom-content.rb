cask 'polycom-content' do
  version '1.3.2.71755'
  sha256 '362804050245b949b435b6efd4bd99fb6bca01479756046f79ddca82cddd41bf'

  url "https://downloads.polycom.com/video/content-app/PolycomContentApp_#{version.dots_to_underscores}.dmg"
  appcast 'https://support.polycom.com/content/support/north-america/usa/en/support/video/polycom-content-app.html',
          must_contain: version.dots_to_underscores
  name 'Polycom Content App'
  homepage 'https://www.polycom.com/content-collaboration/content-sharing/content-app.html'

  pkg 'PolycomContentApp.pkg'

  uninstall pkgutil: 'com.polycom.PolycomPanoApp'
end
