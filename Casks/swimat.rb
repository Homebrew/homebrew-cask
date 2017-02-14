cask 'swimat' do
  version '1.3'
  sha256 '5b0e017bec0de775cb38aeee6d15917e7211f21958f3ead44b56348971d5d31b'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'e8919722a14863c9c2b5f5e2205d8bb45dd9be01a81063a7cc337640e04a3260'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
