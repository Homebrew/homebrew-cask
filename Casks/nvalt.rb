cask 'nvalt' do
  version '2.2.8-128'
  sha256 '85420c2a8d505a580b4aa4f0ef4662f08aa4af6139fb4ed448752b6b6e8fd671'

  # updates.designheresy.com/nvalt was verified as official when first introduced to the cask
  url "http://updates.designheresy.com/nvalt/nvALT#{version.no_hyphens}.dmg"
  name 'nvALT'
  homepage 'http://brettterpstra.com/projects/nvalt/'

  app 'nvALT.app'

  zap trash: [
               '~/Library/Preferences/net.elasticthreads.nv.plist',
               '~/Library/Application Support/Notational Velocity',
             ]
end
