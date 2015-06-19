cask :v1 => 'dump-truck' do
  version :latest
  sha256 :no_check

  url 'https://www.goldenfrog.com/downloads/dumptruck/dumptruck.dmg'
  name 'Dump Truck'
  homepage 'https://www.goldenfrog.com/dumptruck'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Dump Truck.app'
end
