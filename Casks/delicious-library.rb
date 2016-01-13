cask 'delicious-library' do
  version '3.4'
  sha256 'd0d1eb42c12bd440c54ab941921765b2e40a61ceb7a1559e47906660ea75041c'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          :sha256 => '52ffde2cc4994cc0421ce656630db51c069a0ffd05e6ff865a36130d68fb6d5f'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'
  license :commercial

  app "Delicious Library #{version.major}.app"
end
