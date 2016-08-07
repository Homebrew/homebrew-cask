cask 'pgweb' do
  version '0.9.3'
  sha256 'c96fedee07c6e79170f45b377912d51ba3f4ce479c48060adc48a32f3e472993'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: 'ca68f8456b9b6ec147740771c4a2d84db150c630836b1b8f6e0293afd0e16431'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
