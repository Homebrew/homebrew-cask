cask :v1 => 'macports' do
  version '2.3.3'

  if MacOS.release <= :mountain_lion
    sha256 'd4648634b571ada1f81cdc5583a48d0ceed1ef55ce5a2de0bdaaaf4b570b77f0'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.8-MountainLion.pkg"
    pkg "MacPorts-#{version}-10.8-MountainLion.pkg"
  elsif MacOS.release <= :mavericks
    sha256 'e47cab9b36543a4f9a1f8ea99ef34558bed08b8f8f5dc619b278a061c9daf3af'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.9-Mavericks.pkg"
    pkg "MacPorts-#{version}-10.9-Mavericks.pkg"
  else
    sha256 '7eb27ccbdf5cb61840494d954e8b56a9ee96c250d6c6c6ac887f0d80836d2d17'
    url "https://distfiles.macports.org/MacPorts/MacPorts-#{version}-10.10-Yosemite.pkg"
    pkg "MacPorts-#{version}-10.10-Yosemite.pkg"
  end

  gpg "#{url}.asc",
      :key_id => '01ff673fb4aae6cd'
  name 'MacPorts'
  homepage 'http://www.macports.org'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  uninstall :pkgutil => 'org.macports.MacPorts'
  zap       :delete  => '~/.macports'
end
