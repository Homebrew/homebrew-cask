cask 'devhub' do
  version '0.45.4'
  sha256 'd92b27436f0d9ba4f767b6162e89c303637533a3e4bedac6ac2c2b1ce345df88'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
