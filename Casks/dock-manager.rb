cask 'dock-manager' do
  version '1.0'
  sha256 '2b9b6aad149b99463940eb17409f913bb417f33d2902468d1512a40a3a3aa2b2'

  url "https://github.com/AlexeySemigradsky/DockManager/releases/download/v#{version}/DockManager.zip"
  appcast 'https://github.com/AlexeySemigradsky/DockManager/releases.atom'
  name 'Dock Manager'
  homepage 'https://github.com/AlexeySemigradsky/DockManager'

  app 'Dock Manager.app'
end
