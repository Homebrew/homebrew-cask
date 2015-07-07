cask :v1 => 'shuttle' do
  version '1.2.2'
  sha256 '116a216b8f0a9485ed82d944b5ae99bfad1c96a7d2aa3c296808ab824264d7a4'

  url "https://github.com/fitztrev/shuttle/releases/download/#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap :delete => '~/.shuttle.json'
end
