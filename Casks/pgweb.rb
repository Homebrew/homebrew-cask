cask 'pgweb' do
  version '0.9.2'
  sha256 '91c05d50ae6875d483b997eb7ac0525c6fef526cb9bb1814069b67bf060a73e5'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '729b06d9f7a3598dcff04b61a03241009810d9012d0b26f7a444d719d0eaabb9'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
