cask 'bdash' do
  version '1.6.0'
  sha256 'a5908552375a06011f0f288d78dc0af5ed1a0c94af9d21fd112e1c71c3ec79bf'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
