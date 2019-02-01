cask 'devhub' do
  version '0.45.0'
  sha256 'f370f0caf0d3d8a9cfd00880adf4d5ae88cdebd63f0442b6ae4f2a33353c4766'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
