cask 'delicious-library' do
  version '3.7.2'
  sha256 '63aeb949ff185823d88260902dc3e246df7e5d133067fa1383f5710b40872d2c'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
