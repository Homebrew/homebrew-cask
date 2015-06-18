cask :v1 => 'slimboat' do
  version :latest
  sha256 :no_check

  url 'http://www.slimboat.com/release/slimboat.dmg'
  name 'SlimBoat'
  homepage 'http://www.slimboat.com'
  license :gratis

  app 'SlimBoat.app'
end
