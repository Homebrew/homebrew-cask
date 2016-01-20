cask 'nvalt' do
  version '2.2b111'
  sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'

  # designheresy.com is the official download host per the vendor homepage
  url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  appcast 'http://abyss.designheresy.com/nvalt2/nvalt2main.xml',
          checkpoint: '0a7a6a0a27508d2de6ffcd7ebd5be5db54986ea9ba6694daacbe01c59cdea89d'
  name 'nvALT'
  homepage 'http://brettterpstra.com/project/nvalt/'
  license :bsd

  app 'nvALT.app'

  zap delete: [
                '~/Library/Preferences/net.elasticthreads.nv.plist',
                '~/Library/Application Support/Notational Velocity',
              ]
end
