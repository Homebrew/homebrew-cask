cask 'logitech-unifying' do
  version '1.10.421'
  sha256 'd9e196411cc4c0aec72fd01575eaffed228f95bc7d7ededc532d53f8602caa03'

  url "http://www.logitech.com/pub/controldevices/unifying/unifying#{version}.dmg"
  name 'Logitech Unifying Software'
  homepage 'http://www.logitech.com/en-us/promotions/6072'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Logitech Unifying Software.mpkg'

  uninstall pkgutil: 'com.Logitech.*pkg'
end
