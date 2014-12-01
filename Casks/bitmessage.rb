cask :v1 => 'bitmessage' do
  version '0.4.4'
  sha256 'afef467644189c4783e673528665b09242526ba48841b16034a623d8dc553d78'

  url "https://bitmessage.org/download/osx/Archive/bitmessage-v#{version}.dmg"
  homepage 'https://bitmessage.org/'
  license :mit

  app 'Bitmessage.app'
end
