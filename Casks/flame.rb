cask :v1 => 'flame' do
  version '0.2.1'
  sha256 'b81f216caf290fc34824661b06b68eb538a675eada627c3606276762f1d1786e'

  url "http://husk.org/apps/Flame-#{version}-universal.zip"
  homepage 'http://husk.org/apps/flame/'
  license :unknown

  app 'Flame.app'
end
