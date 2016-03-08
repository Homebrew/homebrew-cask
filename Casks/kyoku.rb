cask 'kyoku' do
  version '0.0.6'
  sha256 'c3057f7ba5e721ead6ad91195f08010e3c7cc0b1e172436865f7d05f8ea9e231'

  url "https://github.com/cheeaun/kyoku/releases/download/#{version}/Kyoku.app.zip"
  appcast 'https://github.com/cheeaun/kyoku/releases.atom',
          checkpoint: 'bd656a19e78074b9b0878f3d413a1da6317ad72b8b2cb98ef9ca6e4e602013d2'
  name 'Kyoku'
  homepage 'https://github.com/cheeaun/kyoku'
  license :mit

  app 'Kyoku.app'
end
