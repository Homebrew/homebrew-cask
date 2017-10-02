cask 'archi' do
  version '4.0.3'
  sha256 '3a7afa02de7ce642436e7bad3aaf1420bbadb7dfb1098ea15b97b28d13c448c5'

  url "http://www.archimatetool.com/downloads/release/v#{version.major}/Archi-mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: '6f986fc47533c4bd2892dafbba61e49033c522c9e3be690a9aad9322be1e837b'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
