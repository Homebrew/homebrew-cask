cask 'semulov' do
  version '2.2'
  sha256 '8453c28ba46fa2122ba52dbb1d16fe3dc2dc7268c7629f7feb249f221c001c0a'

  url 'https://www.kainjow.com/downloads/Semulov.zip'
  appcast 'https://kainjow.com/updates/semulov.xml',
          checkpoint: '38e4f99c745a53fc8791d8b127966eaad639e2730e247d7c1c9544f17bc8e7ff'
  name 'Semulov'
  homepage 'https://www.kainjow.com/'

  app 'Semulov.app'
end
