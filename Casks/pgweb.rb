cask 'pgweb' do
  version '0.9.10'
  sha256 '223800dbee563c1ff7848b837057c0035bd9af62d90afc2858177c2406b5f4f9'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '3b6c5fcd579c27bc5cfd4ade4f90a87da82728ae3d2f8965eefd016872c347c8'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
