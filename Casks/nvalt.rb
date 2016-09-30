cask 'nvalt' do
  if MacOS.version <= :mavericks
    version '2.2b111'
    sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'
    # abyss.designheresy.com/nvaltb was verified as official when first introduced to the cask
    url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  else
    version '2.2b121'
    sha256 '6bf8ea48195b6a64b6364f3c48a9c38d16d26696680ee6312ca8869f2d8e9b16'
    url "http://assets.brettterpstra.com/nvALT#{version.delete('b')}.dmg"
  end

  name 'nvALT'
  homepage 'http://brettterpstra.com/project/nvalt/'
  license :bsd

  app 'nvALT.app'

  zap delete: [
                '~/Library/Preferences/net.elasticthreads.nv.plist',
                '~/Library/Application Support/Notational Velocity',
              ]
end
