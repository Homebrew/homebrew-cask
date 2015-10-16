cask :v1 => 'kyoku' do
  version '0.0.5'
  sha256 '2b291bd289ed4fbdaf37b211604a4d271890d9b6d57b4111167adedba37052ef'

  url "https://github.com/cheeaun/kyoku/releases/download/#{version}/Kyoku.app.zip"
  appcast 'https://github.com/cheeaun/kyoku/releases.atom'
  name 'Kyoku'
  homepage 'https://github.com/cheeaun/kyoku'
  license :mit

  app 'Kyoku.app'
end
