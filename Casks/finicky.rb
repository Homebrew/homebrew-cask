cask :v1 => 'finicky' do
  version '0.3'
  sha256 '9c24fd5a904857e2e0d5b01a839c7509fc7ecb7716af3919178218a40b5ddbaa'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'
  license :mit

  app 'Finicky.app'
end
