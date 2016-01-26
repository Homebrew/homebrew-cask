cask 'slimboat' do
  version :latest
  sha256 :no_check

  url 'https://www.slimboat.com/release/slimboat.dmg'
  name 'SlimBoat'
  homepage 'https://www.slimboat.com'
  license :gratis

  app 'SlimBoat.app'
end
