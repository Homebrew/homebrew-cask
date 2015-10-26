cask :v1 => 'monu' do
  version '1.0.7'
  sha256 '3931607aef53c0e2ed43cf9e50f31e438ffd133b998a34d8b464dedb44689cff'

  url "https://github.com/maxogden/monu/releases/download/v#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'
  license :mit

  app 'Monu.app'
end
