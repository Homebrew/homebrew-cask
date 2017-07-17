cask 'archi' do
  version '4.0.2'
  sha256 'ad5c59e14ff09a1bd8cecb6bb739a5e8ff60bd9644fb8a0772224469d652686f'

  url "http://www.archimatetool.com/downloads/release/v#{version.major}/Archi-mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: 'c2fad564fc2be522c1b2860280041c48c772b57b6065ce81ef97b5980ca77a3c'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end
