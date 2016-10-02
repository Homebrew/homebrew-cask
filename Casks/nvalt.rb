cask 'nvalt' do
  if MacOS.version <= :mavericks
    version '2.2b111'
    sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'
    # abyss.designheresy.com/nvaltb was verified as official when first introduced to the cask
    url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  else
    version '2.2b122'
    sha256 'be6c4fd34f9023e4b4913bac5e5b6b4a56c75e3a5eba0eaa88a6877a70ccd2fb'
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
