cask 'shearwater-desktop' do
  version '3.1.4'
  sha256 'd0b3ced1782503f0776f6f78611ce81fc77cba61c92aafa3026cfc5239316a7a'

  url "https://www.shearwater.com/wp-content/downloads/ShearwaterDesktopInstaller_#{version}.dmg"
  name 'Shearwater Desktop'
  homepage 'https://www.shearwater.com/'

  depends_on cask: 'adobe-air'
  depends_on macos: '>= 10.6'

  app 'Shearwater Research/Shearwater Desktop.app'

  zap delete: '~/Library/Preferences/com.shearwaterresearch.divebook'
end
