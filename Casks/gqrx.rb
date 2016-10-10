cask 'gqrx' do
  version '2.5.3'
  sha256 'b5053b9a86c13d856137143a8215f48a85d3e57b4d867c317a666b1bc0e97d10'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version}/Gqrx-#{version}-2.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '686d4a577ad5eea69ae06269c07f215f0c8c90a6cfe89777808e5813d54b53cd'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
end
