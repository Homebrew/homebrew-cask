cask 'swimat' do
  version '1.3.1'
  sha256 '88585d9c478e728838fb842dbd9187839bbc8e3e227a31e7bfb0502717da674c'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'e2af280e708fb6d5e248f23240fed3968d52ac53c4d4b4023b027025ee254cfa'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
