cask 'eye-fi' do
  version '3.4.35'
  sha256 '7de117d0ee443683ad5ca7b3ab4ef5fc9e96c1a3d226cf87358c46b1270fca4e'

  url "https://download.eyefi.com/x2/#{version}/Eye-Fi.dmg"
  name 'Eye-Fi Center'
  homepage 'http://support.eye.fi/downloads'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Eye-Fi.mpkg'

  uninstall pkgutil: 'fi.eye.*'
end
