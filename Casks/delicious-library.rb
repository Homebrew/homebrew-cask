cask 'delicious-library' do
  version '3.7.1'
  sha256 '5b1bbee0f634ccfcb8d955e147f64be53e23b450ffa83627145dac88ee3d5e7f'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml",
          checkpoint: '92cff2a42d246d770b1a01a97d1333789e49acf823f0ad3cf45e9cd1c5114a86'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
