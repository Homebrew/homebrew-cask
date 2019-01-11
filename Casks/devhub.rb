cask 'devhub' do
  version '0.43.0'
  sha256 '049274f31981c89ed54496ff656509bf583ef7fcdafe02b16bb783ed19d4d975'

  url "https://github.com/devhubapp/devhub/releases/download/v#{version}/DevHub-#{version}.dmg"
  appcast 'https://github.com/devhubapp/devhub/releases.atom'
  name 'DevHub'
  homepage 'https://github.com/devhubapp/devhub'

  app 'DevHub.app'
end
