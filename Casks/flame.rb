cask 'flame' do
  version '0.2.1'
  sha256 'b81f216caf290fc34824661b06b68eb538a675eada627c3606276762f1d1786e'

  url "http://husk.org/apps/Flame-#{version}-universal.zip"
  appcast 'http://husk.org/apps/flame/',
          checkpoint: 'a6a9d604c267f84fcf14869493dddb799c1781082d8f604937bd776f31f37b21'
  name 'Flame'
  homepage 'http://husk.org/apps/flame/'

  app 'Flame.app'
end
