cask :v1 => 'freesmug-chromium' do
  version '38.0.2125.122'
  sha256 '9c1b956f83b1e62a877389ecbb46a662cb9fda5e79f8d33673f27b70d76fba00'

  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/ChromiumOSX_#{version}.dmg"
  appcast 'http://osxportableapps.sourceforge.net/chromium/chrcast.xml'
  homepage 'http://www.freesmug.org/chromium'
  license :oss

  app 'Chromium.app'
end
