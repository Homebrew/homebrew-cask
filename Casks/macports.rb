cask 'macports' do
  version '2.3.4'

  if MacOS.release <= :mountain_lion
    sha256 '43c9b56dda623f897854d88c3f7747bd9ae4287fa12b16b1d5eb32f45417b2da'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.release <= :mavericks
    sha256 '4b0fd713e3887c5a0f2fa975f90b6818aeb35ec909931d0905c181085abef7f4'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  elsif MacOS.release <= :yosemite
    sha256 '453125fffb358c9547aab70fa39dc5404acc037c18d7b1d7488256e9e4374138'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  else
    sha256 '8c0b492032c796d766b76da3d1fda8dea732a6cc9056633a3509e3ff06b5e8d8'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.11-ElCapitan.pkg"
    pkg "MacPorts-#{version}-10.11-ElCapitan.pkg"
  end

  name 'MacPorts'
  homepage 'https://www.macports.org'
  license :bsd
  gpg "#{url}.asc",
      key_id: '01ff673fb4aae6cd'

  uninstall pkgutil: 'org.macports.MacPorts'

  zap       delete: '~/.macports'
end
