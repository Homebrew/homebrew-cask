cask 'reeddit' do
  version '1.9.6'
  sha256 'b3e6af1576994b199642d832142cff3fb49713006ab9e0f87e1cbf9ded32cca9'

  # github.com/berbaquero/Reeddit-app was verified as official when first introduced to the cask
  url "https://github.com/berbaquero/Reeddit-app/releases/download/v#{version}/Reeddit.app.zip"
  appcast 'https://github.com/berbaquero/Reeddit-app/releases.atom'
  name 'Reeddit'
  homepage 'https://mac.reedditapp.com/'

  app 'Reeddit.app'
end
