cask :v1 => 'cobalt' do
  version :latest
  sha256 'bf1f1473624a4b078ffc324933919a4fdd1d2bc6c7bf76b77b27bddd51b392ac'

  url 'http://assets.playcobalt.com/Cobalt.dmg'
  name 'Cobalt'
  homepage 'http://playcobalt.com/'
  license :closed

  app 'Cobalt.app'
end
