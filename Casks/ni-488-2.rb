cask 'ni-488-2' do
  version '19.5'
  sha256 'eedeefe34106ad79dade3eae7e7dea68161409f077f3d6bda3a3511c0a8e798d'

  url "https://download.ni.com/support/softlib/gpib/MAC%20OS/#{version}/NI-488.2%20#{version}.dmg"
  appcast 'https://www.ni.com/en-us/support/downloads/drivers/download.ni-488-2.html'
  name 'NI-488.2'
  homepage 'https://www.ni.com/'

  pkg "NI-488.2 #{version}.pkg"

  uninstall pkgutil: 'com.ni.*',
            delete:  '/Applications/National Instruments'
end
