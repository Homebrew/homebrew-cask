cask :v1 => 'kyoku' do
  version '0.0.4'
  sha256 '5bac75ce062206a12c14d67411a8e802999fa31fb177e730b1ea913c293d6bd9'

  url "https://github.com/cheeaun/kyoku/releases/download/#{version}/Kyoku.app.zip"
  appcast 'https://github.com/cheeaun/kyoku/releases.atom'
  name 'Kyoku'
  homepage 'https://github.com/cheeaun/kyoku'
  license :mit

  app 'Kyoku.app'
end
