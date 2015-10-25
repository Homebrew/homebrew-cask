cask :v1 => 'reeddit' do
  version '1.9.6'
  sha256 'b3e6af1576994b199642d832142cff3fb49713006ab9e0f87e1cbf9ded32cca9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/berbaquero/Reeddit-app/releases/download/v#{version}/Reeddit.app.zip"
  appcast 'https://github.com/berbaquero/Reeddit-app/releases.atom'
  name 'Reeddit'
  homepage 'http://mac.reedditapp.com'
  license :mit

  app 'Reeddit.app'
end
