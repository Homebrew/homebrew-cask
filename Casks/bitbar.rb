cask :v1 => 'bitbar' do
  version '1.3.1'
  sha256 '07f3a138b07eeda6c8ad686626676a8fcda6bd10cd371a37274635bac36b1bf5'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar.app.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
