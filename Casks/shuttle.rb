cask :v1 => 'shuttle' do
  version '1.2.5'
  sha256 '7df182f506b80011222c0cdd470be76e0376f38e331f3fafbb6af9add3578023'

  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap :delete => '~/.shuttle.json'
end
