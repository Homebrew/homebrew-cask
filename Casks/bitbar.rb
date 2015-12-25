cask 'bitbar' do
  version '1.3.1'
  sha256 '07f3a138b07eeda6c8ad686626676a8fcda6bd10cd371a37274635bac36b1bf5'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar.app.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          :sha256 => 'e139abfbfa2cef321b90a512e87b41d39f81a8e57b6b110ba04e014862e6eac8'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
