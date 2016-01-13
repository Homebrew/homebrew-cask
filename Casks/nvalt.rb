cask 'nvalt' do
  version '2.2b111'
  sha256 'd787ddf92730bb03ba084e72bc6fb5f4fbd42731fa3531476af9eb3ce39e1cd0'

  # designheresy.com is the official download host per the vendor homepage
  url "http://abyss.designheresy.com/nvaltb/nvalt#{version}.zip"
  appcast 'http://abyss.designheresy.com/nvalt2/nvalt2main.xml',
          :sha256 => '0ad38419eb2b69f74bc34ac8eb2668c5436efb6f9feb17605e6ab1f31f795f63'
  name 'nvALT'
  homepage 'http://brettterpstra.com/project/nvalt/'
  license :bsd

  app 'nvALT.app'

  zap :delete => [
                   '~/Library/Preferences/net.elasticthreads.nv.plist',
                   '~/Library/Application Support/Notational Velocity',
                 ]
end
