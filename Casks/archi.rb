cask 'archi' do
  version '4.1.1'
  sha256 'b10368bbd14d3041e6ab8ae898de6b42c741958c39f185f649822d843600f0fa'

  url "https://www.archimatetool.com/downloads/release/Archi-Mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: 'b58abd8fae510224240ff3b75f1791e9c45fb3f6553f364e75e8718701f6083c'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
