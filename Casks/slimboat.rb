cask :v1 => 'slimboat' do
  version :latest
  sha256 :no_check

  url 'http://www.slimboat.com/release/slimboat.dmg'
  homepage 'http://www.slimboat.com'
  license :unknown    # todo: improve this machine-generated value

  app 'SlimBoat.app'
end
