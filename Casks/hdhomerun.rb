cask 'hdhomerun' do
  version '20180817'
  sha256 'fe36adef65b189e3ec3ff715e52515045a7241339bfad8ebd40982d518cc8c1a'

  url "https://download.silicondust.com/hdhomerun/hdhomerun_mac_#{version}.dmg"
  name 'HDHomeRun'
  homepage 'https://www.silicondust.com/support/downloads/'

  pkg 'HDHomeRun Installer.pkg'

  uninstall pkgutil: 'com.silicondust.*hdhomerun'
end
