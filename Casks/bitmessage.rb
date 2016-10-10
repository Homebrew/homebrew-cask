cask 'bitmessage' do
  version '0.4.4'
  sha256 'afef467644189c4783e673528665b09242526ba48841b16034a623d8dc553d78'

  url "https://bitmessage.org/download/osx/Archive/bitmessage-v#{version}.dmg"
  name 'Bitmessage'
  homepage 'https://bitmessage.org/'

  app 'Bitmessage.app'
end
