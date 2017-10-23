cask 'delicious-library' do
  version '3.7'
  sha256 '78eeef2dbbd564cb28ac4b1010f7728c40ace73edcf268aee69b64c0ec15d009'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast "https://www.delicious-monster.com/downloads/DeliciousLibrary#{version.major}.xml",
          checkpoint: '1248d5d45181edc220a8ded922eed06c69772c153d8b8740df7caea4bedb07f2'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
