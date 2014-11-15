cask :v1 => 'slimboat' do
  version :latest
  sha256 :no_check

  url 'http://www.slimboat.com/release/slimboat.dmg'
  homepage 'http://www.slimboat.com'
  license :unknown

  app 'SlimBoat.app'
end
