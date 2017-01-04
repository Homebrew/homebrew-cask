cask 'healthi' do
  version '1.0.2'
  sha256 'e519636ba2424c91806d26eefcd6a37cfbb6af47cfa4e02902ddfc8379034d72'

  url "https://github.com/pablopunk/healthi/releases/download/v#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi/releases.atom',
          checkpoint: '9af2a5dd2ca01556a71989dab2eb83ef1eb62127a0289701fd481d3767fd9905'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi'

  app 'healthi.app'
end
