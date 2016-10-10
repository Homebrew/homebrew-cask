cask 'aliworkbench' do
  version '1.01.35-35'
  sha256 'd42b830d1a5b1eafba095ea0f70c96b09fff608d3bdef83f03de6bedf76f4609'

  # dbison.alicdn.com was verified as official when first introduced to the cask
  url "https://dbison.alicdn.com/updates/MacQN-#{version}.dmg"
  name 'AliWorkBench'
  name 'Qian Niu'
  name '千牛'
  homepage 'https://qianniu.1688.com'

  app 'AliWorkBench.app'
end
