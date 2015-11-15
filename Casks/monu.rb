cask :v1 => 'monu' do
  version '1.1.0'
  sha256 '33b311cc180de14b2160fcf4675f49fb1002c9a76284e2020eb0142abbe2cc59'

  url "https://github.com/maxogden/monu/releases/download/v#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'
  license :mit

  app 'Monu.app'
end
