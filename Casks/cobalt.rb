cask 'cobalt' do
  version :latest
  sha256 :no_check

  url 'http://assets.playcobalt.com/Cobalt.dmg'
  name 'Cobalt'
  homepage 'http://playcobalt.com/'
  license :closed

  app 'Cobalt.app'
end
