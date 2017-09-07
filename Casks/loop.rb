cask 'loop' do
  version '1.1.0'
  sha256 '18b0c9938a72f4e0b53cac44e167807120a4212bf58b5648786cb434cedd3984'

  url "https://github.com/twostairs/loop/releases/download/v#{version}/loop_#{version}.dmg"
  appcast 'https://github.com/twostairs/loop/releases.atom',
          checkpoint: 'c15d4422ac11760cbe8b8380bd63b116d7c98654f6a711fc4e1fa8d0e5779ff6'
  name 'Loop'
  homepage 'https://github.com/twostairs/loop'

  app 'Loop.app'
end
