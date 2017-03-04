cask 'nvalt' do
  version '2.2.7-126'
  sha256 '496e0fb87b255ac6b6746395ff676b788cc455eccd1e65b49a63d0e2812754c3'

  # updates.designheresy.com/nvalt was verified as official when first introduced to the cask
  url "http://updates.designheresy.com/nvalt/nvALT#{version.no_hyphens}.dmg"
  name 'nvALT'
  homepage 'http://brettterpstra.com/projects/nvalt/'

  app 'nvALT.app'

  zap delete: [
                '~/Library/Preferences/net.elasticthreads.nv.plist',
                '~/Library/Application Support/Notational Velocity',
              ]
end
