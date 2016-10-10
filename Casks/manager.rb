cask 'manager' do
  version '15.0.89'
  sha256 'aeaf0d70a4f1f17ec908f9c51ae5275fc8b4c5a26b7de991b3625d9ec5ace22e'

  url "http://cdn.manager.io/downloads/v#{version}/Manager.dmg"
  name 'Manager'
  homepage 'http://manager.io'

  app 'Manager.app'
end
