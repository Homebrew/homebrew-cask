cask 'shuttle' do
  version '1.2.5'
  sha256 '7df182f506b80011222c0cdd470be76e0376f38e331f3fafbb6af9add3578023'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: '9f66dbb98f73f69f4a1759d4bdb8d2552060d599548427740e239ca45185fe5c'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap delete: '~/.shuttle.json'
end
