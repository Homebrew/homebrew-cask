cask 'devhub' do
  version '0.45.2'
  sha256 '533ecef215b21bf9826d8256a60a273c585d580d6fe9a0ea57f195ab311461f0'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
