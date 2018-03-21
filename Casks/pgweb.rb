cask 'pgweb' do
  version '0.9.11'
  sha256 '13b6b2e91959f4b2e3389864b8afd2447ec69ba9b13d763468e3bfc9aaa7b023'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: 'da379eb2ed5806d88b17a91f8b201b03716e37cc91ca6625d09d499daba9853b'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
