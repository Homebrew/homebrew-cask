cask 'fing' do
  version '3.0'
  sha256 '207c6f441c8edb55b4a59b57f0d5e487afcf578a637d0981e2027adb4f848ea1'

  url 'https://www.fingbox.com/download?plat=osx'
  name 'Fing'
  homepage 'https://www.fingbox.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "overlook-fing-#{version}.pkg"

  uninstall pkgutil: 'com.Overlook.Fing'
end
