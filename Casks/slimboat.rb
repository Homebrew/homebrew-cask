cask 'slimboat' do
  version :latest
  sha256 :no_check

  url 'http://www.slimjet.com/slimboat/release/slimboat.dmg'
  name 'SlimBoat'
  homepage 'http://www.slimjet.com/slimboat/en/'
  license :gratis

  app 'SlimBoat.app'
end
