cask 'seashore' do
  version '2.1.3'
  sha256 'cfca508c78cd95233f3b3fe6d69c458ae963b29a00e8850f62405bea9e555302'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
