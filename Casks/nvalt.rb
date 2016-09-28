cask 'nvalt' do
  if MacOS.version <= :mavericks
    version '2.2b111'
    sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'
    # abyss.designheresy.com/nvaltb was verified as official when first introduced to the cask
    url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  else
    version '2.2b120'
    sha256 'e3ebdc012d5bba6e0e46173daa7c7548eca947958355b37d6ae6040e85b79153'
    # abyss.designheresy.com was verified as official when first introduced to the cask
    url "http://abyss.designheresy.com/nvALT#{version.delete('b')}.zip"
    appcast "http://abyss.designheresy.com/nvalt#{version.major}/nvalt#{version.major}main.xml",
            checkpoint: 'e9855b4e389ddce8ad13f5c9a325cd728c85a030f43b633e36bc31303910d34e'
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
