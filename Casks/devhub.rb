cask 'devhub' do
  version '0.44.0'
  sha256 'eecdc44b964221522046a465cdaf9b96ee113720b453dea1f36b0d0bf1f36c01'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
