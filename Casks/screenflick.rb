cask 'screenflick' do
  version '2.7.14'
  sha256 '0b7437d03691440985c4d020abacb73ba1a4d6674ad79eb31637c3068baef6b5'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'ab7e8ff3a604e0bd5bd73d0b08ff4adf7405d828cc6712a4661b613091d08d06'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
