cask 'firebird' do
  version '1.3'
  sha256 'eaf84c7853326107628eec8b90fc8e1e78ea1afc84a7dfb3177ca50c273b7250'

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-mac.dmg"
  appcast 'https://github.com/nspire-emus/firebird/releases.atom',
          checkpoint: '35d06123bf4aee8f5eef821600daffa5a4240ce91c53b07fe2577e827249ddf8'
  name 'firebird'
  homepage 'https://github.com/nspire-emus/firebird'

  app 'firebird.app'
end
