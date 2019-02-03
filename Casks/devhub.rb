cask 'devhub' do
  version '0.45.1'
  sha256 '2bb0785e72e28aea4db5215c49bf08541169c21df9ada2f571b4c4c559d628f3'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
