cask :v1 => 'monu' do
  version '1.0.6'
  sha256 'abcba4eaf15f73980d1962925a3b4602548ff50530911089a21ecaad07c645c1'

  url "https://github.com/maxogden/monu/releases/download/v#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'
  license :mit

  app 'Monu.app'
end
