cask 'delicious-library' do
  version '3.8.2'
  sha256 'd3118edde50f9d50c0e30d76870d6a412fcdd218562c031c64eec2f04b5a8ed0'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml"
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
