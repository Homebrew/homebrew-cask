cask 'swimat' do
  version '1.2'
  sha256 'b430d48bdd166b6d2a62fea61dbd14906168ab00c6e50058941f830d14c3d722'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '227f9f86a2b4b913c675bd856ad1173e7ea377fdb57fded7609cfa0566c31c13'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
