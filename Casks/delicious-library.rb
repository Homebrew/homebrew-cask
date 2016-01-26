cask 'delicious-library' do
  version '3.4'
  sha256 'd0d1eb42c12bd440c54ab941921765b2e40a61ceb7a1559e47906660ea75041c'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          checkpoint: 'c140037244a7777c02a144b033f0b2ea37557907dad21a63f78f3ffab74d26cf'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'
  license :commercial

  app "Delicious Library #{version.major}.app"
end
