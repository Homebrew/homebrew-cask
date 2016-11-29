cask 'delicious-library' do
  version '3.6.1'
  sha256 '4118b3c05dde652fcd27238f72b345b037d837f49cfe2226c62d2e2b109cd4ce'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml",
          checkpoint: '4fe1868f0ed078ecbfabfbdb041db8d7f2ca6146fb0ab8193c9a96c673bcb008'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
