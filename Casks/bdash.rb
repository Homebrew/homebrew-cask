cask 'bdash' do
  version '1.5.1'
  sha256 'f4dacad985762b88b1303d14128db18d7264ae14ebdf8bf7b699dbc5104d72b4'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
