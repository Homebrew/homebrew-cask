cask 'delicious-library' do
  version '3.4'
  sha256 'd0d1eb42c12bd440c54ab941921765b2e40a61ceb7a1559e47906660ea75041c'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          :sha256 => '6296da21c1b54b0fc83324f6a4b5779fe91d0fdb6aacb142fe1718c446de1c56'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'
  license :commercial

  app "Delicious Library #{version.major}.app"
end
