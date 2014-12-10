cask :v1 => 'dump-truck' do
  version :latest
  sha256 :no_check

  url 'https://www.goldenfrog.com/downloads/dumptruck/dumptruck.dmg'
  homepage 'http://www.goldenfrog.com/dumptruck'
  license :unknown    # todo: improve this machine-generated value

  app 'Dump Truck.app'
end
