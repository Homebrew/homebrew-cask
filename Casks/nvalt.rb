cask :v1 => 'nvalt' do
  version '2.2b111'
  sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'

  # designheresy.com is the official download host per the vendor homepage
  url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  name 'nvALT'
  appcast 'http://abyss.designheresy.com/nvalt2/nvalt2main.xml',
          :sha256 => '46ab145d41812854224a0341afa320e672ea53348abe61ce08ecf84326b1b2c4'
  homepage 'http://brettterpstra.com/project/nvalt/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'nvALT.app'

  zap :delete => [
                  '~/Library/Preferences/net.elasticthreads.nv.plist',
                  '~/Library/Application Support/Notational Velocity',
                 ]
end
