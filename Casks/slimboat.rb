cask :v1 => 'slimboat' do
  version :latest
  sha256 :no_check

  url 'http://www.slimboat.com/release/slimboat.dmg'
  name 'SlimBoat'
  homepage 'http://www.slimboat.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SlimBoat.app'
end
