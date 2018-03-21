cask 'meshmixer' do
  version '3p4'
  sha256 '2a08316e18be5a8c688747d49e4ef4d09565ba298ecaff1d0cd8e2280f7ea373'

  # s3.amazonaws.com/meshmixer.release was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/meshmixer.release/Autodesk_Meshmixer_v#{version}_macOS.pkg"
  name 'MeshMixer'
  homepage 'https://meshmixer.com/'

  pkg "Autodesk_Meshmixer_v#{version}_macOS.pkg"

  uninstall pkgutil: [
                       'com.meshmixer.libmodels.pkg',
                       'com.meshmixer.meshmixer09.pkg',
                     ]
end
