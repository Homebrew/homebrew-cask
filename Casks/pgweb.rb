cask 'pgweb' do
  version '0.9.8'
  sha256 '07b1240f07fd826fb4987b4cc1859d5baf007b80f63602c58101f0437001d9f8'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: 'd86058f025c53c9def9b11b905cc9ce05f73c16055614c717c536363c612298b'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
