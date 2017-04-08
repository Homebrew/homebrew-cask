cask 'swimat' do
  version '1.3.3'
  sha256 'c6649743365c8d30fab0c11061531958e209b8c0fe97a0e592cad8865d14781f'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '00a6dc7553927986323b42437d5fe24af044de83298e33f7cf20dc37ce13a73d'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
