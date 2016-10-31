cask 'nvalt' do
  if MacOS.version <= :mavericks
    version '2.2b111'
    sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'
    # abyss.designheresy.com/nvaltb was verified as official when first introduced to the cask
    url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  else
    version '2.2.5b123'
    sha256 '3bdefc9f60805ae8f1d0de538eda77a82bb63e50437247e65ae2dd05f3580af7'
    url "http://assets.brettterpstra.com/nvALT#{version.delete('b')}.dmg"
  end

  name 'nvALT'
  homepage 'http://brettterpstra.com/project/nvalt/'

  app 'nvALT.app'

  zap delete: [
                '~/Library/Preferences/net.elasticthreads.nv.plist',
                '~/Library/Application Support/Notational Velocity',
              ]
end
