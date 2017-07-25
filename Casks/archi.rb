cask 'archi' do
  version '4.0.2'
  sha256 'ad5c59e14ff09a1bd8cecb6bb739a5e8ff60bd9644fb8a0772224469d652686f'

  url "http://www.archimatetool.com/downloads/release/v#{version.major}/Archi-mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: '53c09c7b5f52da00c23cd94c9b0870b1a655292eb4377d7660eb832f5032374a'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
