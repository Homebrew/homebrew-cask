cask :v1 => 'kyoku' do
  version '0.0.6'
  sha256 'c3057f7ba5e721ead6ad91195f08010e3c7cc0b1e172436865f7d05f8ea9e231'

  url "https://github.com/cheeaun/kyoku/releases/download/#{version}/Kyoku.app.zip"
  appcast 'https://github.com/cheeaun/kyoku/releases.atom'
  name 'Kyoku'
  homepage 'https://github.com/cheeaun/kyoku'
  license :mit

  app 'Kyoku.app'
end
